import 'package:dark_theme_template/drawer_screen.dart';
import 'package:dark_theme_template/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

final darkNotifier = ValueNotifier<bool>(false);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: darkNotifier,
        builder: (BuildContext context, bool isDark, Widget? child) {
          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
            theme: ThemeData(primaryColor: Colors.blue),
            darkTheme: ThemeData( ),
            home: Home(),
          );
        });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void dispose() {
    // TODO: implement dispose
    darkNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = darkNotifier.value;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              darkNotifier.value ? 'DarkMode' : 'LightMode',
              style: Theme.of(context).textTheme.headline4,
            ),
            ToggleButtons(children: [ Text(
              'You have pushed the button this many times:',
            ),
            Text(
              darkNotifier.value ? 'DarkMode' : 'LightMode',
              style: Theme.of(context).textTheme.headline4,
            ),], isSelected:[true,false])
          ],
        ),
      ),
    );
  }
}

import 'package:dark_theme_template/main.dart';
import 'package:flutter/material.dart';

import 'choclate_screen.dart';
import 'drawer_screen.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  bool isDark = darkNotifier.value;

  final _key = GlobalKey<ScaffoldState>();
  final List _gifts = [
    {"url": "", "name": "Подарок 1", "price": "100", "salePride": "150"},
    {"url": "", "name": "Подарок 1", "price": "100", "salePride": "150"},
    {"url": "", "name": "Подарок 1", "price": "100", "salePride": "150"},
    {"url": "", "name": "Подарок 1", "price": "100", "salePride": "150"},
    {"url": "", "name": "Подарок 1", "price": "100", "salePride": "150"},
    {"url": "", "name": "Подарок 1", "price": "100", "salePride": "150"},
    {"url": "", "name": "Подарок 1", "price": "100", "salePride": "150"},
    {"url": "", "name": "Подарок 1", "price": "100", "salePride": "150"},
    {"url": "", "name": "Подарок 1", "price": "100", "salePride": "150"},
    {"url": "", "name": "Подарок 1", "price": "100", "salePride": "150"},
    {"url": "", "name": "Подарок 1", "price": "100", "salePride": "150"},
    {"url": "", "name": "Подарок 1", "price": "100", "salePride": "150"},
    {"url": "", "name": "Подарок 1", "price": "100", "salePride": "150"},
    {"url": "", "name": "Подарок 1", "price": "100", "salePride": "150"},
    {"url": "", "name": "Подарок 1", "price": "100", "salePride": "150"},
    {"url": "", "name": "Подарок 1", "price": "100", "salePride": "150"},
    {"url": "", "name": "Подарок 1", "price": "100", "salePride": "150"},
    {"url": "", "name": "Подарок 1", "price": "100", "salePride": "150"},
    {"url": "", "name": "Подарок 1", "price": "100", "salePride": "150"}
  ];

  Widget listItem(
      {required String title,
      required IconData icon,
      required bool isSelected}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: Material(
        elevation: isSelected ? 0 : 5,
        shadowColor: Colors.black,
        child: InkWell(
          onTap: () {
            print('$title tapped');
          },
          child: Container(
            width: 70,
            decoration: BoxDecoration(
              border: isSelected ? Border.all(color: Colors.redAccent) : null,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  icon,
                  size: 40,
                  color: Colors.red,
                ),
                Text(title),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget listCakeItem({required String title, required String image}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(),
            child: ClipOval(
              child: Image(
                image: NetworkImage(
                  image,
                ),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Text(title)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        key: _key,
         floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDark = !isDark;
          darkNotifier.value = isDark;
        },
        tooltip: 'Increment',
        child: Icon(isDark ? Icons.wb_sunny_outlined : Icons.bubble_chart),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          //backgroundColor: MAIN_COLOR,
          leading: IconButton(
            icon: Icon(
              Icons.apps_rounded,
              size: 30,
            ),
            onPressed: () {
              _key.currentState!.openDrawer();
            },
          ),
          title: FlutterLogo(
            size: 100,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_bag_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight - 15),
            child: GestureDetector(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.search),
                      Text('Search'),
                    ],
                  ),
                ),
              ),
              onTap: () {},
            ),
          ),
        ),
        drawer: DrawerScreen(),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                height: size.height * 0.2 - kToolbarHeight,
                child: PageView(
                  children: [
                    Image.asset(
                      'assets/images/cake.webp',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/cake2.webp',
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Categrories"),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: size.height * 0.2 - kToolbarHeight,
                color: Colors.white,
                child: ListView(
                  children: [
                    listItem(icon: Icons.cake, title: "Cake", isSelected: true),
                    listItem(
                        icon: Icons.cake, title: "Cake", isSelected: false),
                    listItem(
                        icon: Icons.cake, title: "Cake", isSelected: false),
                    listItem(
                        icon: Icons.cake, title: "Cake", isSelected: false),
                    listItem(
                        icon: Icons.cake, title: "Cake", isSelected: false),
                    listItem(
                        icon: Icons.cake, title: "Cake", isSelected: false),
                    listItem(
                        icon: Icons.cake, title: "Cake", isSelected: false),
                  ],
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: size.height * 0.25 - kToolbarHeight,
                color: Colors.white,
                child: ListView(
                  children: [
                    listCakeItem(
                        image:
                            'https://cdn.igp.com/f_auto,q_auto,t_prodm/products/p-delicious-chocolate-cake-with-premium-frosting-half-kg--135596-m.jpg',
                        title: 'Fondent Cokes'),
                    listCakeItem(
                        image:
                            'https://cdn.igp.com/f_auto,q_auto,t_prodm/products/p-delicious-chocolate-cake-with-premium-frosting-half-kg--135596-m.jpg',
                        title: 'Fondent Cokes'),
                    listCakeItem(
                        image:
                            'https://cdn.igp.com/f_auto,q_auto,t_prodm/products/p-delicious-chocolate-cake-with-premium-frosting-half-kg--135596-m.jpg',
                        title: 'Fondent Cokes'),
                  ],
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: size.height * 0.25 - kToolbarHeight,
                child: PageView(
                  children: [
                    Image.asset(
                      'assets/images/cake.webp',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/cake2.webp',
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(8.0),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300.0,
                  mainAxisSpacing: 10.0,
                  mainAxisExtent: 300,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 3 / 2,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CakeDetail()));
                      },
                      child: Card(
                        child: Stack(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  child: Center(
                                    child: Text(
                                      '21%',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  height: 30.0,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.blue,
                                      image: DecorationImage(
                                          image: new AssetImage(
                                            "assets/images/discount.png",
                                          ),
                                          fit: BoxFit.fill)),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.network(
                                    "https://cdn.igp.com/f_auto,q_auto,t_prodm/products/p-delicious-chocolate-cake-with-premium-frosting-half-kg--135596-m.jpg",
                                    fit: BoxFit.contain),
                                Text("Cake"),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Rs. 1450"),
                                    Text(
                                      "Rs. 1500",
                                      style: TextStyle(
                                        color: Colors.red,
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  childCount: 20,
                ),
              ),
            )
          ],
        ));
  }
}

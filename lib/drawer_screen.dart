import 'package:dark_theme_template/detaillog.dart';
import 'package:dark_theme_template/home.dart';
import 'package:dark_theme_template/loginnum.dart';
import 'package:dark_theme_template/main.dart';
import 'package:flutter/material.dart';

import 'choclate_screen.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  final _key = GlobalKey<ScaffoldState>();
  List<Map> menu = [];
  @override
  void initState() {
    super.initState();
    menu = [
      {
        'title': 'Home',
        'icon': Icons.home,
        'onTap': () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CakeDetail()));
        }
      },
      {
        'title': 'My Profile',
        'icon': Icons.person,
        'onTap': () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginNum()));
        }
      },
      {
        'title': 'My Order',
        'icon': Icons.shopping_bag,
        'onTap': () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => DetailsScreen()));
        }
      },
      {
        'title': 'My Wallet',
        'icon': Icons.account_balance_wallet,
        'onTap': () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Home()));
        }
      },
      {'title': 'Cash Points', 'icon': Icons.money, 'onTap': () {}},
      {'title': 'My Address', 'icon': Icons.assignment_ind, 'onTap': () {}},
      {
        'title': 'My Wishlist',
        'icon': Icons.volunteer_activism,
        'onTap': () {}
      },
      {
        'title': 'FeedBack & Reating',
        'icon': Icons.feedback_outlined,
        'onTap': () {}
      },
      {'title': 'Contact Us', 'icon': Icons.contact_phone, 'onTap': () {}},
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor:
            Colors.amber, //This will change the drawer background to blue.
        //other styles
      ),
      child: Drawer(
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                vertical: 20,
              ),
              dense: true,
              leading: IconButton(
                icon: Icon(
                  Icons.apps_rounded,
                  size: 50,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              trailing: ClipOval(
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT33rzn6fXgCNqEL6_Bqz-JoRmrPStTtADm_Q&usqp=CAU'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListView.builder(
                  itemCount: menu.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        ListTile(
                          enabled: true,
                          enableFeedback: true,
                          leading: Icon(
                            menu[index]['icon'],
                            size: 30,
                            color: Colors.white,
                          ),
                          title: Text(
                            menu[index]['title'],
                            style: TextStyle(color: Colors.white),
                            textScaleFactor: 1.3,
                          ),
                          onTap: menu[index]['onTap'],
                          minVerticalPadding: 10,
                          horizontalTitleGap: 60,
                        ),
                        Divider(
                          color: Colors.white,
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

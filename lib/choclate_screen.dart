import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CakeDetail extends StatelessWidget {
  const CakeDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 176, 177, 1),
        elevation: 7,
        leading: Icon(
          Icons.arrow_back_ios,
          size: 30,
        ),
        title: Text('Chocolate Heaven'),
        actions: [
          ClipOval(
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwpvSnZP1_2T6-az9k_gSS0JX2T2UfpYGeBA&usqp=CAU',
              height: 50,
              width: 50,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          // Stack(
          //   children: [
          //   //   Positioned(
          //   //     child: Align(
          //   //       alignment: Alignment.center,
          //   //       child: Image.asset(
          //   //         'assets/images/discount.png',
          //   //         height: 50,
          //   //         width: 50,
          //   //       ),
          //   //     ),
          //   //   ),
          //   //   Align(alignment: Alignment.center, child: Text('20% OFF')),
          //   // ],
          // ),
          Card(
            elevation: 0,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Image.asset(
              'assets/images/cakeimg.jpg',
              height: 300,
              width: double.infinity,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Chocolate Heaven',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.5),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'An all-time favourite cake that tastes just as good as it',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                'looks.An appealing combination of chocolate cake.',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Without Egg",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        StadiumBorder(),
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      " 1.5 kg",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        StadiumBorder(),
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "2 Kg",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        StadiumBorder(),
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "With Egg",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        StadiumBorder(),
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Without Egg",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        StadiumBorder(),
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Rs.600'),
                  Text('Rs.550'),
                ],
              ),
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                        ),
                        const Text(
                          "Add to Bag",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )
                      ],
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        StadiumBorder(),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(255, 176, 177, 1)),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        const Text(
                          "Add to Wishlist",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )
                      ],
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        StadiumBorder(),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(255, 176, 177, 1)),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

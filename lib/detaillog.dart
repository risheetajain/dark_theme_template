import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                alignment: Alignment.bottomCenter,
                height: size.height * 0.3,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                        offset: (Offset(0, 3))),
                  ],
                  color: Color.fromRGBO(255, 176, 177, 1),
                  borderRadius: BorderRadius.circular(1),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          size: 30,
                          color: Colors.white,
                        ),
                        ClipOval(
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwpvSnZP1_2T6-az9k_gSS0JX2T2UfpYGeBA&usqp=CAU',
                            height: 35,
                            width: 35,
                          ),
                        )
                      ],
                    ),
                    Transform.translate(
                      offset: Offset(0, 120),
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                          shape: BoxShape.circle,
                          color: Colors.grey.shade300,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.add_a_photo,
                            size: 60,
                          ),
                          onPressed: () {
                            print('clickable');
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
                  child: Column(
                    children: [
                      Form(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            children: [
                              TextFormField(
                                onFieldSubmitted: (_) {},
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                    labelText: 'First Name',
                                    hintText: 'First Name',
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.phone)),
                              ),
                              TextFormField(
                                onFieldSubmitted: (_) {},
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                    labelText: ' Mobile Number',
                                    hintText: 'Your Mobile Number',
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.phone)),
                              ),
                              TextFormField(
                                onFieldSubmitted: (_) {},
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                    labelText: 'Email Address',
                                    hintText: 'Email Address',
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.phone)),
                              ),
                              TextFormField(
                                onFieldSubmitted: (_) {},
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                    labelText: 'Birthday',
                                    hintText: 'Birthday',
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.phone)),
                              ),
                              TextFormField(
                                onFieldSubmitted: (_) {},
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                    labelText: 'location',
                                    hintText: 'location',
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.phone)),
                              ),
                              TextFormField(
                                onFieldSubmitted: (_) {},
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                    labelText: 'Change the password',
                                    hintText: 'Change the password',
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.phone)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'CONTINUE',
                            style: TextStyle(fontSize: 18),
                          ),
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 10),
                              ),
                              backgroundColor: MaterialStateProperty.all(
                                Colors.blue,
                              ),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Text(
                    'By Signing in you agree to our',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Terms of services & Privicy Policy',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}

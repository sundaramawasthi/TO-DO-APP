import 'package:flutter/material.dart';
import 'package:what_todo/DICTONARY/dict.dart';
import 'package:what_todo/learning/learninghome.dart';
import 'package:what_todo/screens/homepage.dart';

import 'icon_button.dart';
import 'icon_button.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF363567),
      bottomNavigationBar: Container(
        height: 71,
        width: double.infinity,
        padding: EdgeInsets.all(3),
        color: Color(0xFF373856),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(builder: (context) => splashscreen()),
              //     );
              // },//child:
              Image.asset(
                'assets/logo.png',
                height: 60,
                width: 60,
              ),
              // ), //MOVE TO SPLASH SCEEN
              //  ElevatedButton(
              //    onPressed: () {
              //      Navigator.push(
              //          context,
              //          MaterialPageRoute(
              //              builder: (context) =>
              //                  HomePage())); // MOVE TO SCANNER MENU
              //    },
              //child:
              Image.asset(
                'assets/scan.png',
                height: 60,
                width: 60,
              ),
              //), // MOVR TO SCANNER MENU
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.push(context,
              //         MaterialPageRoute(builder: (context) => about()));
              //   },
              //   child:
              Image.asset(
                'assets/info.png',
                height: 60,
                width: 60,
              ),
              //       ), // MOVE TO IFO PAGE
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Transform.rotate(
                origin: Offset(30, -40),
                angle: 2.6,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 90,
                    top: 90,
                  ),
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      colors: [Color(0xffFD8BAB), Color(0xFFFD44C4)],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'IMG_SCANNER',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'CLASSIFY THIS IMG_SCANNER INTO A \n PARTICULAR CATEGORY ',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 76),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Homepage()));
                                },
                                child: CatigoryW(
                                  image: 'assets/images/logo.png',
                                  text: 'todolist',
                                  color: Color(0xFF47B4FF),
                                ),
                              ), // MOVE TO SPLASHSCREEN
                              SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => dict()));
                                },
                                child: CatigoryW(
                                  image: 'assets/images/logo.png',
                                  text: 'DICTORY',
                                  color: Color(0xFFA885FF),
                                ),
                              ), // MOVE TO GENERATOR
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => learning()));
                                },
                               child:
                              CatigoryW(
                                image: 'assets/scan.png',
                                text: 'QR-SCANNER',
                                color: Color(0xFF7DA4FF),
                              ),
                              ), // MOVE TO SCANNER
                              // GestureDetector(
                              //   onTap: () {
                              //     Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //           builder: (context) => about()),
                              //     );
                              //   },
                              //child:
                              CatigoryW(
                                image: 'assets/info.png',
                                text: 'ABOUT US',
                                color: Color(0xFF43DC64),
                              ),
                              //     ), //MOVE  ABOUT US PAGE
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

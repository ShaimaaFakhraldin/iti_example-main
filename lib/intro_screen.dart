import 'package:facebook/register_screen.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
          child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
          ),
          Image(image: AssetImage("assets/images.png")),
          SizedBox(
            height: 50,
          ),
          Text(
            "Welcome to ITI",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 80, horizontal: 40),
              child: Text(
                " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.  ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              )),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            width: double.infinity,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(200, 60),
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)))),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return Login();
                  }));
                },
                child: Text("Log in")),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            width: double.infinity,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(200, 60),
                    backgroundColor: Colors.red[200],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        side: BorderSide(color: Colors.red))),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const RegisterScreen();
                  }));
                },
                child: Text("Regiter")),
          )
        ],
      )),
    ));
  }
}

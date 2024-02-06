import 'dart:async';
import 'package:bull_stox/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'MyHomePage.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  static const KEYLOGIN = "Login";

  @override
  void initState() {
    super.initState();

    whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
                height: 125,
                width: 125,
                child: Image.asset(
                  'assets/images/Splash Screen Icon.png',
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Bull',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                ' Stox',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void whereToGo() async {
    var sharedPref = await SharedPreferences.getInstance();
    var isLoggedIn = sharedPref.getBool(KEYLOGIN);

    Timer(Duration(seconds: 5), () {
      if (isLoggedIn != null) {
        if (isLoggedIn) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => MyHomePage()));
        } else {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
        }
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      }
    });
  }
}

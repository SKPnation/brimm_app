import 'dart:async';

import 'package:brimm_app/utils/size_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    displaySplash();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Text(
              'B',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: displayWidth(context)*0.3,
                  fontFamily: 'Academy Engraved LET'
              )
          ),
        ),
      )
    );
  }


  void displaySplash() {
    Timer(Duration(seconds: 3), () async {
      Get.toNamed('/onBoarding');
    });
  }
}

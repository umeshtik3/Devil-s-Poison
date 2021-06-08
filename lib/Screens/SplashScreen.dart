import 'package:flutter/material.dart';
import 'package:posion/Screens/Dashboard.dart';
import 'package:get/get.dart';
import 'package:posion/Screens/GenerateOTP.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => GenerateOTP());
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo[900],
        body: Center(
          child: Container(
            width: 300,
            child: Image.asset(
              'assets/beer1.gif',
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}

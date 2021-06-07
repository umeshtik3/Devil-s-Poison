import 'package:flutter/material.dart';
import 'package:posion/Screens/Dashboard.dart';
import 'package:get/get.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4), () {
      Get.to(() => DashBoard());
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

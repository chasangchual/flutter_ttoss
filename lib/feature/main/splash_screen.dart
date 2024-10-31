import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttoss/controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        init: SplashController(),
        builder: (context) {
          return Scaffold(
              body: Center(
            child: Image.asset(
              'assets/images/avatar.png',
              width: 350,
              height: 350,
            ),
          ));
        });
  }
}

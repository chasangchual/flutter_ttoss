import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:ttoss/controller/app_controller.dart';
import 'package:ttoss/controller/bottom_navigation_controller.dart';
import 'package:ttoss/controller/splash_controller.dart';
import 'package:ttoss/feature/main/bottom_navigation.dart';
import 'package:ttoss/feature/main/side_menu_fragment.dart';

class MainScreen extends StatelessWidget {
  final _controller = SidebarXController(selectedIndex: 0, extended: true);

  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
          extendBody: AppController.to.extendBody,
          body: const MainScreenBody(),
          bottomNavigationBar: buildBottomNavigationBar(context),
          drawer: MainSideBarFragment(controller: _controller));
    });
  }
}

class MainScreenBody extends StatelessWidget {
  const MainScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        init: SplashController(),
        builder: (context) {
          return Container(
            child: SafeArea(
              bottom: !AppController.to.extendBody,
              child: getBodyFragment(),
            ),
          );
        });
  }

  Widget getBodyFragment() {
    return Obx(() {
      return BottomNavigationController.to.activeView();
    });
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttoss/common/log/Log.dart';
import 'package:ttoss/feature/main/bottom_navigation.dart';

class BottomNavigationController extends GetxController {
  static BottomNavigationController get to => Get.find();

  final _index = 0.obs;

  int get index => _index.value;

  void tap(int newIndex) {
    _index.value = newIndex;
    Log.s.d('${NavigationTabItem.values[_index.value]} selected');
  }

  Widget activeView() {
    return NavigationTabItem.values[_index.value].initialPage;
  }
}

import 'package:get/get.dart';
import 'package:ttoss/controller/bottom_navigation_controller.dart';

class MainBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(BottomNavigationController());
  }
}

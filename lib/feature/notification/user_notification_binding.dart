import 'package:get/get.dart';
import 'package:ttoss/controller/user_notfication_controller.dart';

class UserNotificationBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(UserNotificationController());
  }
}

import 'package:get/get.dart';

class AppBarController extends GetxService {
  static AppBarController get to => Get.find();

  var _newNotificationAvailable = false.obs;
  var _newNotificationCount = 0.obs;

  bool get newNotificationAvailable => _newNotificationAvailable.value;
  int get newNotificationCount => _newNotificationCount.value;

  void newNotification() {
    _newNotificationAvailable.value = true;
    _newNotificationCount.value++;
  }

  void resetNotification() {
    _newNotificationAvailable.value = false;
    _newNotificationCount.value = 0;
  }
}

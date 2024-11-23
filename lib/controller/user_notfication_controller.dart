import 'dart:core';

import 'package:get/get.dart';
import 'package:ttoss/model/user_notification.dart';
import 'package:ttoss/repository/notification_repository.dart';

class UserNotificationController extends GetxController {
  static UserNotificationController get to => Get.find();

  var userNotificationCount = 0.obs;

  List<UserNotification> notifications = <UserNotification>[];
  NotificationRepository notificationRepository = NotificationRepository();

  void load() {
    userNotificationCount.value = 0;
    notifications = notificationRepository.findAll();
    userNotificationCount.value = notifications.length;
  }

  int count() {
    userNotificationCount.value = notifications.length;
    return userNotificationCount.value;
  }

  UserNotification? get(int index) {
    if (index < 0 || index >= count()) {
      return null;
    }
    return notifications[index];
  }
}

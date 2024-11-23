import 'package:dart_date/dart_date.dart';
import 'package:flutter/material.dart';
import 'package:ttoss/common/widget/height_and_width.dart';
import 'package:ttoss/controller/user_notfication_controller.dart';
import 'package:ttoss/model/user_notification.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    UserNotificationController.to.load();
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text("Notifications"),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) => UserNotificationItem(
              userNotification: UserNotificationController.to.get(index),
            ),
            childCount: UserNotificationController.to.count(),
          ))
        ],
      )),
    );
  }
}

class UserNotificationItem extends StatelessWidget {
  final UserNotification? userNotification;

  UserNotificationItem({required this.userNotification, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                // TODO : use const variable for "assets/images/payment_notification.png",  width: 25, height: 25
                Image.asset(
                  userNotification?.type.iconPath ?? "assets/images/payment_notification.png",
                  width: 22,
                  height: 22,
                ),
                Width(5),
                Text(userNotification?.type.name ?? "")
              ],
            ),
            Text(toNotifiedString(userNotification?.date)),
          ],
        ),
        Row(
          children: [
            Width(30),
            Flexible(
                child: Text(
              userNotification?.message ?? "",
              overflow: TextOverflow.ellipsis,
            ))
          ],
        ),
        Height(5)
      ],
    );
  }

  String toNotifiedString(DateTime? notifiedDate) {
    if (notifiedDate == null) {
      return "";
    }

    if (notifiedDate.differenceInHours(DateTime.now().toUTC).abs() < 1) {
      return "${notifiedDate.differenceInMinutes(DateTime.now().toUTC).abs()} minutes ago";
    }

    if (notifiedDate.differenceInHours(DateTime.now().toUTC).abs() <= 23) {
      return "${notifiedDate.differenceInHours(DateTime.now().toUTC).abs()} hours ago";
    }
    return notifiedDate.format('yyyy/MMM/dd');
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
class Notification with _$Notification {
  factory Notification({
    required int id,
    required NotificationType type,
    required String message,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) => _$NotificationFromJson(json);
}

enum NotificationType {
  email(name: "RBC", iconPath: "assets/images/email_notification.png"),
  foreign_transfer(name: "RBC", iconPath: "assets/images/foreign_transfer_notification.png"),
  payment(name: "RBC", iconPath: "assets/images/payment_notification.png"),
  rate_chage(name: "RBC", iconPath: "assets/images/rate_chage_notifcation.png"),
  transfer(name: "RBC", iconPath: "assets/images/transfer_notification.png"),
  safety(name: "RBC", iconPath: "assets/images/security_notification.png");

  const NotificationType({required this.name, required this.iconPath});

  final String name;
  final String iconPath;
}

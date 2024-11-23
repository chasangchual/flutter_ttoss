import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_notification.freezed.dart';
part 'user_notification.g.dart';

@freezed
class UserNotification with _$UserNotification {
  factory UserNotification({
    required int id,
    required UserNotificationType type,
    required String message,
    required UserNotificationState state,
    required DateTime date,
    DateTime? dateOfRead,
  }) = _UserNotification;

  factory UserNotification.fromJson(Map<String, dynamic> json) => _$UserNotificationFromJson(json);
}

enum UserNotificationType {
  email(name: "Email", iconPath: "assets/images/email_notification.png"),
  foreign_currency_transfer(name: "Foreign Transfer", iconPath: "assets/images/foreign_transfer_notification.png"),
  payment(name: "Payment", iconPath: "assets/images/payment_notification.png"),
  rate_change(name: "Rate Changes", iconPath: "assets/images/rate_chage_notifcation.png"),
  wire_transfer(name: "Wire Transfer", iconPath: "assets/images/transfer_notification.png"),
  security(name: "Security", iconPath: "assets/images/security_notification.png");

  const UserNotificationType({required this.name, required this.iconPath});

  final String name;
  final String iconPath;
}

enum UserNotificationState { popped, delivered, read, archived }

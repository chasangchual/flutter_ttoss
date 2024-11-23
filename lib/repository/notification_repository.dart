import 'dart:core';

import 'package:faker/faker.dart';
import 'package:ttoss/model/user_notification.dart';

class NotificationRepository {
  List<UserNotification> findAll() {
    final random = RandomGenerator(seed: 63833423);
    var notifications = <UserNotification>[];
    DateTime currentDate = DateTime.now().toUtc();

    for (int i = 0; i < 100; i++) {
      UserNotificationType type = UserNotificationType.values[random.integer(UserNotificationType.values.length)];
      String message = notificationMessages[type]?[random.integer(notificationMessages[type]!.length)] ?? "";
      DateTime dateOfNotified = currentDate
          .subtract(Duration(days: random.integer(7)))
          .subtract(Duration(hours: random.integer(24)))
          .subtract(Duration(minutes: random.integer(60)));

      notifications.add(UserNotification(
          id: i, type: type, message: message, state: UserNotificationState.delivered, date: dateOfNotified));
    }

    return notifications;
  }

  Map<UserNotificationType, List<String>> notificationMessages = {
    UserNotificationType.email: <String>[
      "You have a new message from support@example.com.",
      "Your inbox is almost full. Please delete some emails.",
      "Newsletter: Check out our latest updates and promotions!",
      "Your email verification was successful.",
      "Failed to send an email to john@example.com.",
      "Reminder: Update your email password for better security.",
      "You’ve received a shared document from Mary@example.com.",
      "Your subscription has been renewed successfully.",
      "Unable to deliver email to jane@example.com. Check the address.",
      "Your account activity summary is ready.",
      "Your contact request to sales@example.com has been accepted.",
      "A new login was detected from your email account.",
      "Welcome to our service! Check your email for more info.",
      "Your email forwarding setup is complete.",
      "Scheduled email sent successfully.",
    ],
    UserNotificationType.foreign_currency_transfer: <String>[
      "Your transfer of \$1,000 USD to EUR is complete.",
      "A currency transfer request of \$500 AUD to GBP was submitted.",
      "The exchange rate for your transfer has been updated.",
      "Your foreign currency transfer was canceled.",
      "Recipient John Doe has received the converted amount.",
      "Transfer fee of \$15.00 has been applied.",
      "Your transfer to INR is pending bank approval.",
      "The recipient’s bank details are invalid. Transfer failed.",
      "Currency exchange for \$250 CAD to JPY is in progress.",
      "Your recent transfer was delayed due to a system error.",
      "You saved \$10 on transfer fees using our promo!",
      "The transfer of 500 GBP to USD will be processed shortly.",
      "Rate locked for your foreign currency transfer.",
      "Your transfer to EUR exceeded the daily limit.",
      "Recipient’s account is not eligible for foreign currency transfers.",
    ],
    UserNotificationType.payment: <String>[
      "Your payment of \$200 to ABC Inc. was successful.",
      "Auto-payment of \$50 for Netflix is due tomorrow.",
      "Failed to process your payment of \$100. Please retry.",
      "Your recurring payment for Gym Membership has been set up.",
      "You received \$500 from John Doe.",
      "Payment of \$45 was refunded to your account.",
      "A payment authorization request for \$150 is pending.",
      "Your payment to XYZ Ltd. is being processed.",
      "New payment method added to your account.",
      "Your payment of \$25 was declined. Insufficient funds.",
      "You earned 200 reward points for your recent payment.",
      "Payment details updated successfully.",
      "Scheduled payment of \$100 will be processed tomorrow.",
      "Your payment for Order #12345 has been confirmed.",
      "Unusual payment activity detected. Please verify."
    ],
    UserNotificationType.rate_change: <String>[
      "Your wire transfer of \$1,200 to John Doe was successful.",
      "Failed to process your wire transfer to XYZ Bank.",
      "Your wire transfer request is being reviewed.",
      "Funds of \$500 were credited via wire transfer from Jane Smith.",
      "Wire transfer fees of \$25 have been deducted.",
      "Recipient account for your wire transfer is invalid.",
      "Your wire transfer to HSBC Bank will arrive in 2 days.",
      "You’ve exceeded the daily limit for wire transfers.",
      "Your scheduled wire transfer was completed successfully.",
      "Incoming wire transfer of \$800 is pending verification.",
      "Wire transfer request canceled by the sender.",
      "Bank processing delay for your wire transfer of \$1,000.",
      "Details for your wire transfer were updated successfully.",
      "Confirmation: Wire transfer to Chase Bank was processed.",
      "Your international wire transfer to Germany is in progress.",
    ],
    UserNotificationType.wire_transfer: <String>[
      "Your wire transfer of \$1,200 to John Doe was successful.",
      "Failed to process your wire transfer to XYZ Bank.",
      "Your wire transfer request is being reviewed.",
      "Funds of \$500 were credited via wire transfer from Jane Smith.",
      "Wire transfer fees of \$25 have been deducted.",
      "Recipient account for your wire transfer is invalid.",
      "Your wire transfer to HSBC Bank will arrive in 2 days.",
      "You’ve exceeded the daily limit for wire transfers.",
      "Your scheduled wire transfer was completed successfully.",
      "Incoming wire transfer of \$800 is pending verification.",
      "Wire transfer request canceled by the sender.",
      "Bank processing delay for your wire transfer of \$1,000.",
      "Details for your wire transfer were updated successfully.",
      "Confirmation: Wire transfer to Chase Bank was processed.",
      "Your international wire transfer to Germany is in progress.",
    ],
    UserNotificationType.security: <String>[
      "A new device logged into your account. Was this you?",
      "Password successfully changed. If this wasn’t you, contact support.",
      "Failed login attempt detected. Please review your account activity.",
      "Two-factor authentication enabled for your account.",
      "Suspicious activity detected on your account.",
      "Your account was locked due to multiple failed login attempts.",
      "Security settings were updated successfully.",
      "Your account recovery email has been updated.",
      "Unusual login detected from a new location.",
      "Session expired. Please log in again to continue.",
      "Data access request approved for your account.",
      "Your recovery questions were updated successfully.",
      "Verification code sent to your registered email.",
      "Your account access was restored after verification.",
      "Firewall blocked an unauthorized attempt to access your account.",
    ],
  };
}

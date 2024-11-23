import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:ttoss/common/preference/app_preference.dart';
import 'package:ttoss/common/theme/custom_theme.dart';
import 'package:ttoss/controller/app_controller.dart';
import 'package:ttoss/feature/main/main_binding.dart';
import 'package:ttoss/feature/main/main_screen.dart';
import 'package:ttoss/feature/notification/user_notification_binding.dart';
import 'package:ttoss/feature/notification/user_notification_screen.dart';

/// `WidgetsFlutterBinding` serves as a concrete binding for applications built on the Widgets framework.
/// It acts as the interface that connects the Flutter framework to the Flutter engine.
/// Initializing `WidgetsFlutterBinding` by calling `ensureInitialized()` is essential to facilitate communication
/// between the framework and the engine.
/// For more details, refer to the Flutter architectural layers diagram:
/// (https://docs.flutter.dev/resources/architectural-overview#architectural-layers)
Future<void> main() async {
  final bindings = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: bindings);

  await AppPreferences.init();
  Get.put(AppController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GetMaterialApp(
        initialBinding: MainBindings(),
        home: MainScreen(),
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: AppController.to.themeMode,
        getPages: [
          GetPage(name: '/notification', page: () => const NotificationScreen(), binding: UserNotificationBinding())
        ],
      );
    });
  }
}

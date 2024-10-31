import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  static SplashController get to => Get.find();

  @override
  void onReady() {
    navigateToMainScreen();
  }

  Future<void> navigateToMainScreen() async {
    // run application initialization here
    // such as load environment variables, ..
    await Future.delayed(const Duration(seconds: 2));
    FlutterNativeSplash.remove();
  }
}

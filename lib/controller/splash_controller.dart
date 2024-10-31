import 'package:get/get.dart';
import 'package:ttoss/feature/main/main_screen.dart';

class SplashController extends GetxController {
  static SplashController get to => Get.find();

  @override
  void onReady() {
    navigateToMainScreen();
  }

  Future<void> navigateToMainScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.to(() => MainScreen());
  }
}

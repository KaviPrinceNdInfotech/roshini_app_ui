import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:roshini/controllers/signup_controller/signup_controler.dart';
import 'package:roshini/controllers/splash_controller/splash_controllers.dart';
import 'package:roshini/modules/otp/otp_phone_controller.dart';

import '../../modules/bottom_navbar/bottom_bar_controllers.dart';
import '../home_controllers/home_controllers.dart';

class StoreBinding implements Bindings {
// default dependency
  @override
  void dependencies() {
    //Get.lazyPut(() => HomeController());
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<SplashController>(
      () => SplashController(),
    );
    Get.lazyPut<OtpTimerphoneController>(
      () => OtpTimerphoneController(),
    );

    //Get.lazyPut(() => SplashController());
    //Get.lazyPut(() => OtpTimerphoneController());
    Get.lazyPut(() => SignUpController());
    Get.lazyPut(() => DashboardController());

    Get.put(SignUpController());
    Get.put(DashboardController());
  }
}

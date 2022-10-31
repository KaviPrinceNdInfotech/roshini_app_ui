import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:roshini/controllers/signup_controller/signup_controler.dart';
import 'package:roshini/controllers/splash_controller/splash_controllers.dart';
import 'package:roshini/modules/otp/otp_phone_controller.dart';

import '../../modules/bottom_navbar/bottom_bar_controllers.dart';
import '../add_tecnician_controller/add_technicians_controller.dart';
import '../home_controllers/home_controllers.dart';
import '../register_complaint_controller/register_complain_controller.dart';

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
    Get.lazyPut(() => RegisterComplainController());
    Get.lazyPut(() => AddtechnicianController());

    Get.put(SignUpController());
    Get.put(DashboardController());
    Get.put(RegisterComplainController());
    Get.put(AddtechnicianController());
  }
}

import 'dart:async';

import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_ticket_provider_mixin.dart';

import '../../modules/welcome/welcome_page.dart';

class SplashController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void onInit() {
    animationInitilization();
    super.onInit();

    Timer(
      const Duration(seconds: 3),
      () => Get.off(
        WelcomeScreen(),
      ),
    );
    // Get.to(() => WelcomeScreen());
  }

  animationInitilization() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeOut)
            .obs
            .value;
    animation.addListener(() => update());
    animationController.forward();
    //Get.to(() => WelcomeScreen());
  }
  //Get.to(() => WelcomeScreen());

}

// import 'dart:async';
//
// import 'package:flutter/animation.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_state_manager/src/simple/get_controllers.dart';
// import 'package:roshini/modules/welcome/welcome_page.dart';
//
// class SplashController extends GetxController
//     with GetSingleTickerProviderStateMixin {
//   late AnimationController animationController;
//   late Animation<double> animation;
//   @override
//   void onInit() {
//     super.onInit();
//     animationInitilization();
//
//     Timer(
//       const Duration(seconds: 3),
//       () => Get.off(
//         WelcomeScreen(),
//       ),
//     );
//   }
//
//   animationInitilization() {
//     animationController =
//         AnimationController(vsync: this, duration: const Duration(seconds: 2));
//     animation =
//         CurvedAnimation(parent: animationController, curve: Curves.easeOut)
//             .obs
//             .value;
//     animation.addListener(() => update());
//     animationController.forward();
//     //Get.to(() => WelcomeScreen());
//   }
// }

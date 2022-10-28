import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:roshini/constants/app_theme/app_color.dart';

import '../../controllers/splash_controller/splash_controllers.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      backgroundColor: MyTheme.t1navbar1,
      body: GetBuilder<SplashController>(
        init: SplashController(),
        builder: (controller) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'lib/assets/images/JK_Roshini1logofull.png',
                    //'lib/assets/images/roshini_logo_dummy.png',
                    width: controller.animation.value * 320,
                    height: controller.animation.value * 450,
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

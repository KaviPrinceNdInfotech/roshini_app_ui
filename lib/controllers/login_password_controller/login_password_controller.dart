import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../modules/home_page/home_page.dart';

class LoginpasswordController extends GetxController {
  final GlobalKey<FormState> loginpasswordformkey = GlobalKey<FormState>();

  late TextEditingController mobileController, passwordController;

  var mobile = '';
  var password = '';

  @override
  void onInit() {
    super.onInit();
    mobileController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    mobileController.dispose();
    passwordController.dispose();
  }

  String? validPhone(String value) {
    if (value.length < 10) {
      return "provide valid phone";
    }
    return null;
  }

  String? validPassword(String value) {
    if (value.length < 5) {
      return "Must be minimum  5 character";
    }
    return null;
  }

  void checkLoginpassword() {
    final isValid = loginpasswordformkey.currentState!.validate();
    if (!isValid) {
      return;
    }
    loginpasswordformkey.currentState!.save();
    Get.to(() => HomePage());
  }
}

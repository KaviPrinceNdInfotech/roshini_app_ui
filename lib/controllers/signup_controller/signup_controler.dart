import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final GlobalKey<FormState> SignupFormKey = GlobalKey<FormState>();

  var selectedDrowpdown = 'abc';
  List dropdownText = ['abc', 'def', 'ghi'];

  late TextEditingController nameController,
      mobileController,
      addressController;
  var name = '';
  var mobile = '';
  var address = '';
  @override
  void onInit() {
    super.onInit();
    nameController = TextEditingController();
    mobileController = TextEditingController();
    addressController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    nameController.dispose();
    mobileController.dispose();
    addressController.dispose();
  }

  String? validateName(String value) {
    if (value.length < 2) {
      return "Name must be of 2 characters";
    }
    return null;
  }

  String? validatemobile(String value) {
    if (value.length < 10) {
      return "Provide valid Phone";
    }
    return null;
  }

  String? validateAddress(String value) {
    if (value.length < 6) {
      return "provide valid address";
    }
    return null;
  }

  void checkLogin() {
    final isValid = SignupFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    SignupFormKey.currentState!.save();
  }
}

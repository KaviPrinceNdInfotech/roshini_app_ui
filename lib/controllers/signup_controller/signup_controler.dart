import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final GlobalKey<FormState> SignupFormKey = GlobalKey<FormState>();

  var selectedDrowpdown = 'abc';
  List dropdownText = ['abc', 'def', 'ghi'];

  ///this is radio button function...
  var selectedService = ''.obs;

  onChangeService(String service) {
    selectedService.value = service;
  }

  ///till here radio button........

  late TextEditingController nameController,
      mobileController,
      shopnameController,
      addressController,
      aadharController,
      passwordControler;
  var name = '';
  var mobile = '';
  var shopname = '';
  var address = '';
  var password = '';
  var aadhar = '';
  @override
  void onInit() {
    super.onInit();
    nameController = TextEditingController();
    mobileController = TextEditingController();
    shopnameController = TextEditingController();
    addressController = TextEditingController();
    aadharController = TextEditingController();
    passwordControler = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    nameController.dispose();
    mobileController.dispose();
    shopnameController.dispose();
    addressController.dispose();
    aadharController.dispose();
    passwordControler.dispose();
  }

  String? validateName(String value) {
    if (value.length < 2) {
      return "Name should must be 2 characters";
    }
    return null;
  }

  String? validatemobile(String value) {
    if (value.length < 10) {
      return "Provide valid Phone";
    }
    return null;
  }

  String? validateShopname(String value) {
    if (value.length < 3) {
      return "Provide valid ShopName";
    }
    return null;
  }

  String? validateAddress(String value) {
    if (value.length < 3) {
      return "provide valid address";
    }
    return null;
  }

  String? validateaadharcard(String value) {
    if (value.length < 12) {
      return "Provide valid aadhar";
    }
    return null;
  }

  String? validatepassword(String value) {
    if (value.length < 5) {
      return "Provide valid password";
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

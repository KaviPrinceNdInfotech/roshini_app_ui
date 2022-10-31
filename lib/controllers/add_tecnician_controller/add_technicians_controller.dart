import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddtechnicianController extends GetxController {
  final GlobalKey<FormState> addtechnicianformkey = GlobalKey<FormState>();

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
      return "provide valid name";
    }
    return null;
  }

  String? validPhone(String value) {
    if (value.length < 10) {
      return "provide valid phone";
    }
    return null;
  }

  String? validAddress(String value) {
    if (value.length < 2) {
      return "Provide valid address";
    }
    return null;
  }

  void checkTechnician() {
    final isValid = addtechnicianformkey.currentState!.validate();
    if (!isValid) {
      return;
    }
    addtechnicianformkey.currentState!.save();
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roshini/modules/home_page/home_page.dart';

class AddserviceController extends GetxController {
  final GlobalKey<FormState> addserviceformkey = GlobalKey<FormState>();

  late TextEditingController serviceController;

  var service = '';

  @override
  void onInit() {
    super.onInit();
    serviceController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    serviceController.dispose();
  }

  String? validateService(String value) {
    if (value.length < 2) {
      return "provide valid service";
    }
    return null;
  }

  void checkService() {
    final isValid = addserviceformkey.currentState!.validate();
    if (!isValid) {
      return;
    }
    addserviceformkey.currentState!.save();

    Get.to(() => HomePage());
  }
}

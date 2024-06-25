// login_controller.dart
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  var phoneController = TextEditingController().obs;
  var isFocused = false.obs;

  void setFocus(bool value) {
    isFocused.value = value;
  }

  @override
  void onClose() {
    phoneController.value.dispose();
    super.onClose();
  }
}

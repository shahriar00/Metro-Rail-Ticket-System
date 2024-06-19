import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var phoneController = TextEditingController();

  void getOtp() {
    String phone = phoneController.text.trim();
    if (phone.isNotEmpty) {
      // Handle OTP generation and sending here
      Get.snackbar('OTP Sent', 'OTP has been sent to +880$phone',
          snackPosition: SnackPosition.BOTTOM);
    } else {
      Get.snackbar('Error', 'Please enter your phone number',
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}

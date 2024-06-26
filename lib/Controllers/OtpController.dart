import 'package:get/get.dart';
import 'package:flutter/material.dart';

class OtpController extends GetxController {
  final List<TextEditingController> otpControllers =
      List<TextEditingController>.generate(4, (_) => TextEditingController());
  final List<FocusNode> otpFocusNodes =
      List<FocusNode>.generate(4, (_) => FocusNode());
  final List<Rx<Color>> otpFillColors = List<Rx<Color>>.generate(
      4, (_) => Rx<Color>(Color.fromRGBO(235, 243, 241, 1)));

  @override
  void onInit() {
    super.onInit();
    for (int i = 0; i < otpFocusNodes.length; i++) {
      otpFocusNodes[i].addListener(() {
        otpFillColors[i].value = otpFocusNodes[i].hasFocus
            ? Colors.white
            : Color.fromRGBO(235, 243, 241, 1);
      });
    }
  }

  @override
  void onClose() {
    for (var controller in otpControllers) {
      controller.dispose();
    }
    for (var focusNode in otpFocusNodes) {
      focusNode.dispose();
    }
    super.onClose();
  }
}

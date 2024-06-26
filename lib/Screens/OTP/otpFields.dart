import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Controllers/OtpController.dart';

class OtpField extends StatelessWidget {
  const OtpField({super.key});

  @override
  Widget build(BuildContext context) {
    final OtpController controller = Get.put(OtpController());
    final textTheme = Theme.of(context).textTheme;

    Widget buildTextField(int index) {
      return Obx(() => SizedBox(
            height: 56.h,
            width: 54.w,
            child: TextFormField(
              focusNode: controller.otpFocusNodes[index],
              controller: controller.otpControllers[index],
              autofillHints: const [AutofillHints.oneTimeCode],
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                } else if (value.isEmpty) {
                  if (index > 0) {
                    FocusScope.of(context).previousFocus();
                  }
                }
              },
              onFieldSubmitted: (value) {
                if (value.isEmpty && index > 0) {
                  FocusScope.of(context).previousFocus();
                }
              },
              style: textTheme.headlineLarge?.copyWith(
                fontSize: 20.sp,
              ),
              keyboardType: TextInputType.phone,
              textAlign: TextAlign.center,
              cursorColor: const Color.fromRGBO(255, 84, 94, 1),
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: InputDecoration(
                filled: true,
                fillColor: controller.otpFillColors[index].value,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    color: Colors.green,
                    width: 2.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ));
    }

    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(4, (index) => buildTextField(index)),
      ),
    );
  }
}

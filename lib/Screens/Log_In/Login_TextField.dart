import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Controllers/login_controller.dart';

class LoginTextField extends StatefulWidget {
  const LoginTextField({super.key});

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  final LoginController loginController = Get.put(LoginController());
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      child: TextField(
        controller: loginController.phoneController.value,
        focusNode: _focusNode,
        keyboardType: TextInputType.phone,
        cursorColor: Color.fromRGBO(255, 84, 94, 1),
        inputFormatters: [LengthLimitingTextInputFormatter(10)],
        decoration: InputDecoration(
          //fillColor: Colors.green,

          focusColor: Color.fromRGBO(77, 157, 71, 1),
          labelText: ' Enter Phone Number',
          labelStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: _isFocused
                    ? Colors.green
                    : Colors.black, // Change color based on focus
              ),
          floatingLabelStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: _isFocused
                    ? Colors.green
                    : Color.fromRGBO(121, 136, 133, 1),
              ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          floatingLabelAlignment: FloatingLabelAlignment.start,
          hintText: _isFocused ? '' : '+880  - - - - - - - - -',
          hintStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Color.fromRGBO(121, 136, 133, 1),
              ),
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(6.r),
          // ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(6.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
            borderRadius: BorderRadius.circular(6.r),
          ),
          // contentPadding: EdgeInsets.only(left: 24.w),
          contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 29),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import '../../Controllers/login_controller.dart';
//
// class LoginTextField extends StatelessWidget {
//   final LoginController loginController = Get.find<LoginController>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 100.h,
//       child: Obx(() => TextField(
//             controller: loginController.phoneController.value,
//             focusNode: FocusNode()
//               ..addListener(() {
//                 loginController.setFocus(FocusScope.of(context).hasFocus);
//               }),
//             keyboardType: TextInputType.phone,
//             cursorColor: Color.fromRGBO(255, 84, 94, 1),
//             inputFormatters: [LengthLimitingTextInputFormatter(10)],
//             textInputAction: TextInputAction.done, // Set the action to 'done'
//             onSubmitted: (_) {
//               FocusScope.of(context).unfocus(); // Dismiss the keyboard
//             },
//             decoration: InputDecoration(
//               labelText: 'Enter Phone Number',
//               labelStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
//                     color: loginController.isFocused.value
//                         ? Colors.green
//                         : Colors.black, // Change color based on focus
//                   ),
//               floatingLabelStyle:
//                   Theme.of(context).textTheme.titleSmall?.copyWith(
//                         color: loginController.isFocused.value
//                             ? Colors.green
//                             : Color.fromRGBO(121, 136, 133, 1),
//                       ),
//               floatingLabelBehavior: FloatingLabelBehavior.always,
//               floatingLabelAlignment: FloatingLabelAlignment.start,
//               hintText: loginController.isFocused.value
//                   ? ''
//                   : '+880  - - - - - - - - -',
//               hintStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
//                     color: Color.fromRGBO(121, 136, 133, 1),
//                   ),
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(6.r),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.grey),
//                 borderRadius: BorderRadius.circular(6.r),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.green),
//                 borderRadius: BorderRadius.circular(6.r),
//               ),
//               contentPadding:
//                   EdgeInsets.symmetric(vertical: 20, horizontal: 29),
//             ),
//           )),
//     );
//   }
// }

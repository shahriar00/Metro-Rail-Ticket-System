// // import 'package:flutter/material.dart';
// //
// // class loginScreen extends StatelessWidget {
// //   const loginScreen({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Container(
// //         child: Row(
// //           children: [],
// //         ),
// //       ),
// //     );
// //   }
// // }
//
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
//
// import '../../Controllers/login_controller.dart';
//
// class LoginPage extends StatelessWidget {
//   final LoginController loginController = Get.put(LoginController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 24.w),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               SizedBox(height: 80.h),
//               Image.asset(
//                 'assets/logo.png',
//                 height: 100.h,
//               ),
//               SizedBox(height: 40.h),
//               Text(
//                 'Dhaka Mass Transit Company Limited',
//                 style: TextStyle(
//                   fontSize: 18.sp,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 40.h),
//               Text(
//                 'Sign in',
//                 style: TextStyle(
//                   fontSize: 22.sp,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 10.h),
//               Text(
//                 'Sign in with your mobile number',
//                 style: TextStyle(
//                   fontSize: 16.sp,
//                   color: Colors.grey,
//                 ),
//               ),
//               SizedBox(height: 20.h),
//               TextField(
//                 controller: loginController.phoneController,
//                 keyboardType: TextInputType.phone,
//                 decoration: InputDecoration(
//                   prefixText: '+880 ',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8.r),
//                   ),
//                   hintText: 'Enter Phone No',
//                 ),
//               ),
//               SizedBox(height: 20.h),
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: loginController.getOtp,
//                   style: ElevatedButton.styleFrom(
//                     padding: EdgeInsets.symmetric(vertical: 12.h),
//                   ),
//                   child: Text(
//                     'Get OTP',
//                     style: TextStyle(
//                       fontSize: 18.sp,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20.h),
//               Text.rich(
//                 TextSpan(
//                   text: 'By clicking "Sign Up" you agree to our ',
//                   style: TextStyle(fontSize: 14.sp),
//                   children: [
//                     TextSpan(
//                       text: 'terms and conditions',
//                       style: TextStyle(
//                         color: Colors.green,
//                         decoration: TextDecoration.underline,
//                       ),
//                     ),
//                     TextSpan(text: ' as well as our '),
//                     TextSpan(
//                       text: 'privacy policy',
//                       style: TextStyle(
//                         color: Colors.green,
//                         decoration: TextDecoration.underline,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Controllers/login_controller.dart';

import '../../constent.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Color.fromRGBO(235, 243, 241, 1),
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Container(
                height: 250.h,
                child: Column(
                  children: [
                    SizedBox(
                      height: 52.h,
                    ),
                    ClipRect(
                      child: SvgPicture.asset('assets/metroLogoOnly.svg'),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      'Dhaka Mass Transit Company Limited',
                      style: GoogleFonts.poppins(
                        color: Color.fromRGBO(90, 117, 112, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: .5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                height: 602.h,
                width: 365.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 29.0),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_back),
                            ),
                            Text(
                              'Sign in',
                              style: textTheme.headlineLarge,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Sign in with your mobile number',
                        style: textTheme.titleMedium,
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 50.h),
                      Container(
                        width: 275.w,
                        child: TextField(
                          controller: loginController.phoneController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            fillColor: Colors.green,
                            focusColor: Colors.green,
                            prefixText: '+88',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            hintText: 'Enter Phone No',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testfile/Components/CustomButton.dart';

import 'package:testfile/Screens/Log_In/Login.dart';
import 'package:testfile/Screens/OTP/otpFields.dart';
import '../../Components/constent.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
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
                height: 240.h,
                child: Column(
                  children: [
                    SizedBox(height: 52.h),
                    ClipRect(
                      child: SvgPicture.asset('assets/metroLogoOnly.svg'),
                    ),
                    SizedBox(height: 4.h),
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
                height: 611.h,
                width: 365.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Align children to start
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 29.w),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Get.to(LoginPage());
                              },
                              icon: Icon(Icons.arrow_back),
                            ),
                            Text(
                              'Verification',
                              style: textTheme.headlineLarge,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 46.w, right: 46.w),
                        child: Text(
                          'We send a code to verify your \nMobile number',
                          style: textTheme.titleMedium,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 50.h),
                      Padding(
                        padding: EdgeInsets.only(left: 46.w, right: 46.w),
                        child: Text(
                          'Enter your OTP code here',
                          style: textTheme.headlineMedium,
                          textAlign: TextAlign.start,
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 46.w, right: 46.w),
                        child: Container(
                          child: OtpField(),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Center(
                        child: Container(
                          alignment: Alignment.center,
                          width: 276.w,
                          height: 68.h,
                          child: CustomButton(
                            text: 'Continue',
                            onPressed: () {
                              Get.to(OtpPage());
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 19.h,
                      ),
                      Center(
                        child: Text(
                          'I didn’t receive a code',
                          style: textTheme.titleSmall?.copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      // Center(
                      //   child: Container(
                      //     color: Colors.green,
                      //     child: TextButton(
                      //       style: TextButton.styleFrom(
                      //         foregroundColor: Color.fromRGBO(14, 44, 38, 1),
                      //         minimumSize: Size(double.infinity,
                      //             48), // Set the width to full and height to 48
                      //       ),
                      //       onPressed: () {},
                      //       child: Text(
                      //         'RESEND',
                      //         style: textTheme.headlineSmall?.copyWith(
                      //           fontSize: 14,
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // )
                      Center(
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            'RESEND',
                            style: textTheme.headlineSmall,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

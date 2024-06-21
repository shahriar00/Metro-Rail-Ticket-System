// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'Screens/Log_In/Login.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;
//     return ScreenUtilInit(
//       designSize: Size(screenWidth, screenHeight),
//       minTextAdapt: true,
//       splitScreenMode: true,
//       builder: (_, child) {
//         return GetMaterialApp(
//           title: 'Flutter Demo',
//           theme: ThemeData(
//             colorScheme: ColorScheme.fromSeed(
//                 seedColor: const Color.fromRGBO(235, 243, 241, 0)),
//             useMaterial3: true,
//           ),
//           home: const loginScreen(),
//         );
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Screens/Log_In/Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      designSize: Size(393, 851),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            // colorScheme: ColorScheme.fromSeed(
            //     seedColor: const Color.fromRGBO(235, 243, 241, 1)),
            useMaterial3: true,
          ),
          home: loginPage(),
        );
      },
    );
  }
}

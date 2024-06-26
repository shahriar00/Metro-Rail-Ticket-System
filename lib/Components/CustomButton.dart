import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_common/get_reset.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        //minimumSize: Size(275.w, 68.h), // full width and height of 50
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6), // Rounded corners
        ),
      ),
      onPressed: onPressed,
      child: Center(
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Color.fromRGBO(235, 243, 241, 1),
              ),
        ),
      ),
    );
  }
}

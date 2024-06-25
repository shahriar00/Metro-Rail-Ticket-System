import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "By clicking 'Sign Up' you agree to our ",
            style: TextStyle(
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: 'terms and conditions',
                style: TextStyle(color: Colors.green),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print('Nosto Shenul 1');
                  },
              ),
              TextSpan(
                text: ' as well as our ',
                style: TextStyle(color: Colors.black),
              ),
              TextSpan(
                text: 'privacy policy',
                style: TextStyle(color: Colors.green),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print('Nosto Shenul 2');
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

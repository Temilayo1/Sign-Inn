import 'package:first_app/forgot-password/components/body.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  static var routeName = 'forgot_password';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text("Reset Password"),
        backgroundColor: Colors.blueAccent,
        // // title: Text(
        // //   "Forgot Password",
        // //   style: TextStyle(
        // //     color: Colors.grey,
        // //     fontSize: (20),
        // //     //  fontWeight: FontWeight.bold,
        // //   ),
        // // ),
      ),
      body: Body(),
    );
  }
}

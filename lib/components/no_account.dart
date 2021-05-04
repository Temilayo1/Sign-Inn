//import 'package:first_app/sign-up/sign_up.dart';
import 'package:flutter/material.dart';
//import 'package:trial/forgot-password/forgot_password.dart';

class NoAccount extends StatelessWidget {
  const NoAccount({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: (15),
          ),
        ),
        GestureDetector(
          //  onTap: () => Navigator.pushNamed(context, SignUp.routeName),
          child: Text(
            "Sign Up ",
            textAlign: TextAlign.center,
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.red,
              fontSize: (17),
            ),
          ),
        ),
      ],
    );
  }
}

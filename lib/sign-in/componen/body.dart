import 'dart:ui';

import 'package:first_app/components/no_account.dart';

import 'package:first_app/sign-in/componen/sign_form.dart';
import 'package:flutter/material.dart';

//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import '../../home.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: (20),
              vertical: (20),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 120,
                ),
                Text(
                  "Welcome Back",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: (27),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Sign in with your email and password \nto continue",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: (15),
                  ),
                ),
                SizedBox(
                  height: 51,
                ),
                SignForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

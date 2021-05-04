import 'package:first_app/forgot-password/forgot_password.dart';
import 'package:first_app/sign-in/sign_in.dart';
//import 'package:first_app/sign-up/sign_up.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(NewApp());
}

class NewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'New',
        // theme: theme(),
        // home: SplashScreen(),
        home: SignIn(),
        initialRoute: '/',
        routes: {
          'forgot_password': (context) => ForgotPassword(),
          //  'sign_up': (context) => SignUp(),
        });
  }
}

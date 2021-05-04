import 'package:first_app/components/default_button.dart';
import 'package:first_app/components/form_error.dart';
//import 'package:first_app/forgot-password/forgot_password.dart';
import 'package:flutter/material.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  // ignore: unused_field
  final _formKey = GlobalKey<FormState>();
  final emailControllerr = TextEditingController();
  final passwordController = TextEditingController();
  bool isInputValid = false;
  bool remember = false;

  final List<String> errors = [];
  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: (30)),
          buildPasswordFormField(),
          SizedBox(
            height: (20),
          ),
          // Row(
          //   children: [
          //     Checkbox(
          //       activeColor: Colors.red,
          //       value: remember,
          //       onChanged: (value) {
          //         setState(() {
          //           remember = value;
          //         });
          //       },
          //     ),
          //     Text(
          //       "Remember me",
          //       style: TextStyle(color: Colors.white),
          //     ),
          //     Spacer(),
          //   ],
          // ),
          SizedBox(
            height: 20,
          ),
          FormError(errors: errors),
          SizedBox(
            height: 10,
          ),
          DefualtButton(
            color: !isInputValid ? Color(0xff1d2a4a) : Colors.blue,
            text: "SIGN IN",
            press: () {
              if (isInputValid) {
                print('i am valid');
                //do logic here
              } else {
                return null;
              }
            },
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Forgot Password?",
            style: TextStyle(
              color: Colors.white,
              // decoration: TextDecoration.underline,
            ),
          ),
          Text(
            "Reset Password",
            style: TextStyle(
              color: Colors.blue,
              // decoration: TextDecoration.underline,
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      controller: passwordController,
      obscureText: _isHidden,
      onChanged: (value) {
        if (passwordController.text.length > 0) {
          setState(() {
            isInputValid = true;
          });
        } else {
          isInputValid = false;
        }
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
          return "";
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.teal),
        ),
        hintText: "Enter password",
        hintStyle: TextStyle(
          color: Colors.black,
          fontSize: (15),
          // fontWeight: FontWeight.bold,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        suffixIcon: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: (30),
          ),
          child: InkWell(
            onTap: _togglePasswordView,
            child: Icon(
              Icons.visibility,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      controller: emailControllerr,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) {},
      onChanged: (value) {
        if (emailControllerr.text.length > 0) {
          setState(() {
            isInputValid = true;
          });
        } else {
          isInputValid = false;
        }
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
          return "";
        } else if (emailvalidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
          return "";
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
          return "";
        } else if (!emailvalidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        fillColor: Colors.white,

        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        //  labelText: "Email",
        // labelStyle: TextStyle(color: Colors.red),
        hintText: "Enter email",
        hintStyle: TextStyle(
          color: Colors.black,
          fontSize: (15),
          //   fontWeight: FontWeight.bold,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        suffixIcon: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: (30),
          ),
          child: Icon(
            Icons.email_outlined,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}

final RegExp emailvalidatorRegExp =
    RegExp(r"^[a-zA-Z0-9,]+@[a-zA-Z0-9,]+\.[a-zA-Z])+");
const String kEmailNullError = "Please enter your email";
const String kInvalidEmailError = "Please enter a valid email";
const String kPassNullError = "Please enter your password";
const String kShortPassError = "Password too short";
const String kMatchPassError = "Passwords don't match";

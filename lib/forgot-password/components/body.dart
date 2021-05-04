import 'package:first_app/components/default_button.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: (20),
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 101,
              ),
              Text(
                "Forgot Password",
                //  textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: (20),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: (30),
              ),
              Text(
                "Please enter your email to recieve  \na link to reset your password",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: (18),
                  //fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  // final _formKey = GlobalKey<FormState>();
  // List<String> errors = [];
  String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      // key: _formKey,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {},
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.teal),
              ),
              labelText: "Email",
              hintText: "Enter email",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: (30),
                ),
                child: Icon(
                  Icons.email_outlined,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          //  FormError(errors: errors),
          SizedBox(
            height: 55,
          ),
          DefualtButton(
              text: "RESET",
              press: () {
                //  if (_formKey.currentState.validate()) {
                // _formKey.currentState.save();
                // print("you'll get an email soon");
              }
              // },
              ),
          SizedBox(
            height: 10,
          ),
          // NoAccount(),
        ],
      ),
    );
  }
}

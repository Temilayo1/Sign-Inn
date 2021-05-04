import 'package:flutter/material.dart';

class DefualtButton extends StatelessWidget {
  const DefualtButton({Key key, this.text, this.press, this.color})
      : super(key: key);
  final String text;
  final Function press;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: (60),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: color,
        // color: Color(0xff1D2A4A),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(fontSize: (20), color: Colors.white),
        ),
      ),
    );
  }
}

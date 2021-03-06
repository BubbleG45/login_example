import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.color = kRoundedButtonColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  final String text;
  final Function press;
  final Color color, textColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .8,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(29),
        ),
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: 24),
        ),
        color: color,
        onPressed: press,
      ),
    );
  }
}

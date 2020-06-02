import 'package:flutter/material.dart';
import 'package:loginexample/constants.dart';

class AccountCheck extends StatelessWidget {
  final bool login;
  final Function press;

  const AccountCheck({this.login = true, this.press});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? "Don't have an Account ?" : "Already have an Account ?",
          style: TextStyle(color: kPrimaryColor),
        ),
        SizedBox(width: 4),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? 'Sign Up' : 'Sign In',
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:loginexample/components/account_check.dart';
import 'package:loginexample/components/or_divider.dart';
import 'package:loginexample/components/rounded_button.dart';
import 'package:loginexample/components/rounded_input.dart';
import 'package:loginexample/components/social_icons.dart';
import 'package:loginexample/screens/login.dart';

import '../constants.dart';

class SignUpBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: size.height * .2),
          Text(
            'SIGNUP',
            style: TextStyle(fontSize: 36),
          ),
          SizedBox(height: size.height * .2),
          RoundedInputField(
            hintText: 'Enter Email',
            onChanged: (value) {},
          ),
          SizedBox(height: size.height * .03),
          RoundedInputField(
            hintText: 'Enter Password',
            isPassword: true,
            onChanged: (value) {},
          ),
          SizedBox(height: size.height * .03),
          RoundedButton(
            text: 'SIGNUP',
            color: kPrimaryColor,
            press: () {},
          ),
          SizedBox(height: size.height * .03),
          AccountCheck(
            login: false,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Login();
              }));
            },
          ),
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialIcon(
                iconSrc: "assets/icons/facebook.svg",
                press: () {},
              ),
              SocialIcon(
                iconSrc: "assets/icons/google.svg",
                press: () {},
              ),
              SocialIcon(
                iconSrc: "assets/icons/twitter.svg",
                press: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

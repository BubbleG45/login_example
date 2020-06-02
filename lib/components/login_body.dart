import 'package:flutter/material.dart';
import 'package:loginexample/components/account_check.dart';
import 'package:loginexample/components/rounded_button.dart';
import 'package:loginexample/components/rounded_input.dart';
import 'package:loginexample/constants.dart';
import 'package:loginexample/screens/signup.dart';

class LoginBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: size.height * .2),
          Text(
            'LOGIN',
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
            text: 'LOGIN',
            color: kPrimaryColor,
            press: () {},
          ),
          SizedBox(height: size.height * .03),
          AccountCheck(
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Signup();
              }));
            },
          ),
        ],
      ),
    );
  }
}

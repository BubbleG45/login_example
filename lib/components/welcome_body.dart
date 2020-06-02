import 'package:flutter/material.dart';
import 'package:loginexample/components/rounded_button.dart';
import 'package:loginexample/constants.dart';
import 'package:loginexample/screens/login.dart';
import 'package:loginexample/screens/signup.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
            ),
            SizedBox(height: size.height * .3),
            RoundedButton(
              text: 'LOGIN',
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Login();
                }));
              },
            ),
            SizedBox(height: size.height * .05),
            RoundedButton(
              text: 'SIGNUP',
              color: Colors.deepOrange,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Signup();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}

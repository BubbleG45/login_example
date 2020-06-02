import 'package:flutter/material.dart';
import 'package:loginexample/components/signup_body.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SignUpBody(),
      ),
    );
  }
}

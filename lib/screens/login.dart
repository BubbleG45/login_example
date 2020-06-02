import 'package:flutter/material.dart';
import 'package:loginexample/components/login_body.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LoginBody(),
      ),
    );
  }
}

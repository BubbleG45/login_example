import 'package:flutter/material.dart';
import 'package:loginexample/constants.dart';

class RoundedInputField extends StatelessWidget {
  const RoundedInputField({
    Key key,
    this.hintText,
    this.onChanged,
    this.isPassword = false,
  }) : super(key: key);

  final String hintText;
  final ValueChanged<String> onChanged;

  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    //TODO change to stateful and add ability to see password when visibility icon is clicked
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .8,
      child: TextField(
        obscureText: isPassword ? true : false,
        keyboardType: TextInputType.text,
        onChanged: (value) {},
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          fillColor: kInputFillColor,
          filled: true,
          hintText: hintText,
          border: InputBorder.none,
          prefixIcon: isPassword
              ? Icon(
                  Icons.lock,
                  color: kPrimaryColor,
                )
              : Icon(
                  Icons.person,
                  color: kPrimaryColor,
                ),
          suffixIcon: isPassword
              ? Icon(
                  Icons.visibility,
                  color: kPrimaryColor,
                )
              : null,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(29)),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(29),
            ),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class HaveAccountCheck extends StatelessWidget {
  final bool login;
  final Function onTap;
  const HaveAccountCheck({
    Key key,
    this.login = true,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't have an account? " : "Already have an account? ",
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            login ? "Register" : "Login",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
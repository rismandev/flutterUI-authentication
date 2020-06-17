import 'package:flutter/material.dart';
import 'package:flutter_auth/screens/register/components/body.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}



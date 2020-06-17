import 'package:flutter/material.dart';
import 'package:flutter_auth/components/have.account.check.dart';
import 'package:flutter_auth/components/rounded.button.dart';
import 'package:flutter_auth/components/rounded.input.field.dart';
import 'package:flutter_auth/components/rounded.password.field.dart';
import 'package:flutter_auth/components/social.button.dart';
import 'package:flutter_auth/screens/login/login.screen.dart';
import 'package:flutter_auth/screens/register/components/background.dart';
import 'package:flutter_auth/screens/register/components/or.divider.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isShow = false;

  void onShow() {
    setState(() {
      isShow = !this.isShow;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Register Now!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SvgPicture.asset(
              "assets/icons/register.svg",
              height: size.height * 0.3,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            RoundedTextField(
              hintText: "Enter email address...",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
              isShow: isShow,
              onShow: () {
                this.onShow();
              },
            ),
            RoundedButton(
              text: "REGISTER",
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            HaveAccountCheck(
              login: false,
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                  ModalRoute.withName('/'),
                );
              },
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            OrDivider(),
            SizedBox(
              height: size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialButton(
                  icon: "assets/icons/facebook.svg",
                  onPress: () {},
                ),
                SocialButton(
                  icon: "assets/icons/twitter.svg",
                  onPress: () {},
                ),
                SocialButton(
                  icon: "assets/icons/google-plus.svg",
                  onPress: () {},
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
          ],
        ),
      ),
    );
  }
}


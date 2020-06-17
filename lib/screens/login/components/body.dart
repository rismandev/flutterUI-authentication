import 'package:flutter/material.dart';
import 'package:flutter_auth/components/have.account.check.dart';
import 'package:flutter_auth/components/rounded.button.dart';
import 'package:flutter_auth/components/rounded.input.field.dart';
import 'package:flutter_auth/components/rounded.password.field.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/screens/login/components/background.dart';
import 'package:flutter_auth/screens/register/register.screen.dart';
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
                "Login now!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.3,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedTextField(
              hintText: "Your email address",
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
              text: "LOGIN ",
              color: kPrimaryColor,
              textColor: Colors.white,
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            HaveAccountCheck(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RegisterScreen();
                    },
                  ),
                  ModalRoute.withName('/'),
                );
              },
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}

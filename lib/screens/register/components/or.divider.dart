import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: <Widget>[
          builderDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "OR",
              style:
                  TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
            ),
          ),
          builderDivider(),
        ],
      ),
    );
  }

  Expanded builderDivider() {
    return Expanded(
      child: Divider(
        color: kPrimaryColor.withAlpha(80),
        height: 2,
      ),
    );
  }
}
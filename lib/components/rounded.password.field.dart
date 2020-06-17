import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text.field.container.dart';
import 'package:flutter_auth/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final bool isShow;
  final Function onShow;
  const RoundedPasswordField({
    Key key,
    @required this.onChanged,
    this.isShow = false,
    this.onShow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: isShow ? false : true,
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          hintText: "Your password",
          border: InputBorder.none,
          suffixIcon: GestureDetector(
            onTap: onShow,
            child: Icon(
              isShow ? Icons.visibility_off : Icons.visibility,
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}

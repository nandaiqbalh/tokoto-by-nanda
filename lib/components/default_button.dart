import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.text,
    required this.press,
  });
  final String text;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      style: ElevatedButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Text(
        text,
        style: TextStyle(
          fontSize: getProportionateScreenWidth(18),
          color: Colors.white,
        ),
      ),
    );
  }
}

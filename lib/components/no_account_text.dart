// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:tokoto_by_nanda/constants.dart';
import 'package:tokoto_by_nanda/screens/forgot_password/forgot_password_screen.dart';
import 'package:tokoto_by_nanda/screens/sign_up/sign_up_screen.dart';
import 'package:tokoto_by_nanda/size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account?",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, SignUpScreen.routeName);
              },
              child: Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(16),
                  color: kPrimaryColor,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: getProportionateScreenHeight(30),
        ),
      ],
    );
  }
}

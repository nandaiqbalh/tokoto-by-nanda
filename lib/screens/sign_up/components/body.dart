// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tokoto_by_nanda/components/social_card.dart';
import 'package:tokoto_by_nanda/constants.dart';
import 'package:tokoto_by_nanda/screens/sign_up/components/sign_up_form.dart';
import 'package:tokoto_by_nanda/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight * 0.02,
            ),
            Text(
              "Register Account",
              style: headingStyle,
            ),
            Text(
              "Complete your details or continue \nwith social media!",
              textAlign: TextAlign.center,
              style: TextStyle(),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.07,
            ),
            SignUpForm(),
            SizedBox(
              height: SizeConfig.screenHeight * 0.07,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialCard(
                  icon: "assets/icons/google-icon.svg",
                  press: () {},
                ),
                SocialCard(
                  icon: "assets/icons/facebook-2.svg",
                  press: () {},
                ),
                SocialCard(
                  icon: "assets/icons/twitter.svg",
                  press: () {},
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Text(
              "By continuing your confirm, it means you agree \nwith our Term and Condition",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
          ],
        ),
      ),
    );
  }
}

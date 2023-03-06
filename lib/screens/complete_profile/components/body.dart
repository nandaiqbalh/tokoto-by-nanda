// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tokoto_by_nanda/constants.dart';
import 'package:tokoto_by_nanda/screens/complete_profile/components/complete_profile_form.dart';
import 'package:tokoto_by_nanda/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight * 0.02,
            ),
            Text(
              "Complete Profile",
              style: headingStyle,
            ),
            Text(
              "Complete your details to continue!",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.05,
            ),
            CompleteProfileForm(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            Text(
              "By continuing your confirm, it means you agree \nwith our Term and Condition.",
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

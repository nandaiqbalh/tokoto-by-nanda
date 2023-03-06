// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tokoto_by_nanda/components/default_button.dart';
import 'package:tokoto_by_nanda/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.screenHeight * 0.04,
          ),
          Image.asset(
            "assets/images/success.png",
            height: SizeConfig.screenHeight * 0.4,
          ),
          Text(
            "Login Success",
            style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            height: getProportionateScreenHeight(56),
            child: DefaultButton(
              text: "Back to Home",
              press: () {
                // if all valid, then go to login success screen
                // Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              },
            ),
          ),
          Spacer()
        ],
      ),
    );
  }
}

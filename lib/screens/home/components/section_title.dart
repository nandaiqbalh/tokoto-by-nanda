// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tokoto_by_nanda/size_config.dart';

class SectionText extends StatelessWidget {
  const SectionText({
    super.key,
    required this.text,
    required this.press,
  });

  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
              color: Colors.black,
            ),
          ),
          GestureDetector(
            onTap: press,
            child: Text(
              "See more",
              style: TextStyle(),
            ),
          ),
        ],
      ),
    );
  }
}

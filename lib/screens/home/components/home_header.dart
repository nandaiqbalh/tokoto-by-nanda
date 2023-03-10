// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tokoto_by_nanda/screens/home/components/icon_btn_with_counter.dart';
import 'package:tokoto_by_nanda/screens/home/components/search_field.dart';
import 'package:tokoto_by_nanda/size_config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWIthCounter(
            icon: Icon(Icons.shopping_cart_outlined),
            press: () {},
          ),
          IconBtnWIthCounter(
            icon: Icon(Icons.notifications_none_outlined),
            numOfItems: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}

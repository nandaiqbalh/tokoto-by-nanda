// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:tokoto_by_nanda/screens/home/components/categories.dart';
import 'package:tokoto_by_nanda/screens/home/components/home_discount_banner.dart';
import 'package:tokoto_by_nanda/screens/home/components/home_header.dart';
import 'package:tokoto_by_nanda/screens/home/components/popular_products.dart';
import 'package:tokoto_by_nanda/screens/home/components/special_offers.dart';
import 'package:tokoto_by_nanda/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            HomeHeader(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            HomeDiscountBanner(),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            Categories(),
            SpecialOffer(),
            PopularProducts()
          ],
        ),
      ),
    );
  }
}

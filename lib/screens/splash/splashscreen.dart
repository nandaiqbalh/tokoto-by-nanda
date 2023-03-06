// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tokoto_by_nanda/screens/splash/components/body.dart';
import 'package:tokoto_by_nanda/size_config.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    // We have to call it on the starter screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}

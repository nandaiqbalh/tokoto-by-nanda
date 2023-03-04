// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:tokoto_by_nanda/constants.dart';
import 'package:tokoto_by_nanda/routes.dart';
import 'package:tokoto_by_nanda/screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: "Muli",
          textTheme: TextTheme(
              bodyText1: TextStyle(
                color: kTextColor,
              ),
              bodyText2: TextStyle(
                color: kTextColor,
              )),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      initialRoute: Splashscreen.routeName,
      routes: routes,
    );
  }
}

// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:tokoto_by_nanda/routes.dart';
import 'package:tokoto_by_nanda/screens/splash/splashscreen.dart';
import 'package:tokoto_by_nanda/theme.dart';

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
      theme: themeData(),
      initialRoute: Splashscreen.routeName,
      routes: routes,
    );
  }
}

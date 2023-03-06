// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tokoto_by_nanda/constants.dart';

ThemeData themeData() {
  return ThemeData(
      appBarTheme: appBarTheme(),
      scaffoldBackgroundColor: Colors.white,
      fontFamily: "Muli",
      textTheme: textTheme(),
      inputDecorationTheme: inputDecorationTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity);
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(
        color: kTextColor,
      ),
      gapPadding: 10);
  return InputDecorationTheme(
    // if we are using our floatingLabelBehavior in our theme, them its not applayed
    // floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(
      vertical: 20,
      horizontal: 42,
    ),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(
      color: kTextColor,
    ),
    bodyText2: TextStyle(
      color: kTextColor,
    ),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Color(0xFF8B8B8B),
        fontSize: 18,
      ),
    ),
  );
}

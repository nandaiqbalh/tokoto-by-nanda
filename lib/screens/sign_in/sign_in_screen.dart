// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tokoto_by_nanda/screens/sign_in/components/body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sign In",
          style: TextStyle(
            color: Color(0xFF8B8B8B),
          ),
        ),
      ),
      body: Body(),
    );
  }
}

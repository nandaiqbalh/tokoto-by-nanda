// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tokoto_by_nanda/screens/forgot_password/components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  static String routeName = "/forgot-password";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Forgot Password",
          style: TextStyle(
            color: Color(0xFF8B8B8B),
          ),
        ),
      ),
      body: Body(),
    );
  }
}

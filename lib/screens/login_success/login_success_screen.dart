// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tokoto_by_nanda/screens/login_success/components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({super.key});

  static String routeName = "/login_success";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Login Success",
          style: TextStyle(
            color: Color(0xFF8B8B8B),
          ),
        ),
      ),
      body: Body(),
    );
  }
}

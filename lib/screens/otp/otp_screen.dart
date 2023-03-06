// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tokoto_by_nanda/screens/otp/components/body.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  static String routeName = "/otp_verification";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "OTP Verification",
          style: TextStyle(
            color: Color(0xFF8B8B8B),
          ),
        ),
      ),
      body: Body(),
    );
  }
}

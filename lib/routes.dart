// ignore_for_file: prefer_const_constructors

import 'package:flutter/widgets.dart';
import 'package:tokoto_by_nanda/screens/forgot_password/forgot_password_screen.dart';
import 'package:tokoto_by_nanda/screens/login_success/login_success_screen.dart';
import 'package:tokoto_by_nanda/screens/sign_in/sign_in_screen.dart';
import 'package:tokoto_by_nanda/screens/splash/splashscreen.dart';

// we use name route, all our routes will be available here
final Map<String, WidgetBuilder> routes = {
  Splashscreen.routeName: (context) => Splashscreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
};

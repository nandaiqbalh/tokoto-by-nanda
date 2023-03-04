// ignore_for_file: prefer_const_constructors

import 'package:flutter/widgets.dart';
import 'package:tokoto_by_nanda/screens/splashscreen.dart';

// we use name route, all our routes will be available here
final Map<String, WidgetBuilder> routes = {
  Splashscreen.routeName: (context) => Splashscreen(),
};

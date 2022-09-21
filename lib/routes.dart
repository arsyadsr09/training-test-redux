import 'package:flutter/material.dart';
import 'package:project_test3/screens/home/home.dart';
import 'package:project_test3/screens/landing/landing.dart';

final Map<String, WidgetBuilder> routes = {
  '/Home': (BuildContext context) => Home(),
  '/Landing': (BuildContext context) => const Landing(
        title: "Ini Title",
      ),
};

import 'package:flutter/material.dart';
import './landing_view.dart';

class Landing extends StatefulWidget {
  final String title;

  const Landing({super.key, required this.title});

  @override
  LandingView createState() => new LandingView();
}


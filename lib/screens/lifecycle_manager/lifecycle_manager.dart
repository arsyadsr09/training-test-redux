import 'package:flutter/material.dart';
import './lifecycle_manager_view.dart';

class LifecycleManager extends StatefulWidget {
  final Widget child;

  const LifecycleManager({super.key, required this.child});

  @override
  LifecycleManagerView createState() => new LifecycleManagerView();
}

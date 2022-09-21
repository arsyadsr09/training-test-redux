import 'package:flutter/material.dart';

import 'modules/main_state.dart';

@immutable
class AppState {
  final MainState mainState;

  const AppState({
    required this.mainState,
  });

  factory AppState.initial() {
    return AppState(
      mainState: MainState.initial(),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState &&
          runtimeType == other.runtimeType &&
          mainState == other.mainState;

  @override
  int get hashCode => mainState.hashCode;
}

import 'package:meta/meta.dart';

@immutable
class MainState {
  const MainState({this.data});

  final List? data;

  factory MainState.initial() {
    return const MainState(data: []);
  }

  MainState copyWith({List? data}) {
    return MainState(data: data ?? this.data);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MainState &&
          runtimeType == other.runtimeType &&
          data == other.data;

  @override
  int get hashCode => data.hashCode;
}

import 'package:meta/meta.dart';

@immutable
class MainState {
  const MainState({this.data, this.dataName});

  final List? data;
  final String? dataName;

  factory MainState.initial() {
    return const MainState(data: [], dataName: "");
  }

  MainState copyWith({List? data, String? dataName}) {
    return MainState(
        data: data ?? this.data, dataName: dataName ?? this.dataName);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MainState &&
          runtimeType == other.runtimeType &&
          dataName == other.dataName &&
          data == other.data;

  @override
  int get hashCode => data.hashCode ^ dataName.hashCode;
}

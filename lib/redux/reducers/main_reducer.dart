import 'package:redux/redux.dart';

import '../actions/main_action.dart';
import '../modules/main_state.dart';

final mainReducer = combineReducers<MainState>([
  TypedReducer<MainState, SetData>(_setDataMainState),
  TypedReducer<MainState, SetDataName>(_setDataNameMainState),
]);

MainState _setDataMainState(MainState? state, SetData payload) {
  return state!.copyWith(data: payload.data);
}

MainState _setDataNameMainState(MainState? state, SetDataName payload) {
  return state!.copyWith(dataName: payload.dataName);
}

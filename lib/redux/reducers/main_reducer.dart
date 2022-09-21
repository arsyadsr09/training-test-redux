import 'package:redux/redux.dart';

import '../actions/main_action.dart';
import '../modules/main_state.dart';

final mainReducer = combineReducers<MainState>([
  TypedReducer<MainState, SetData>(_setDataMainState),
]);

MainState _setDataMainState(MainState? state, SetData payload) {
  return state!.copyWith(data: payload.data);
}

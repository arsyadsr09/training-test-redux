import 'app_state.dart';
import 'reducers/main_reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    mainState: mainReducer(state.mainState, action),
  );
}

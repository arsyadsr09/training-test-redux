import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:project_test3/redux/actions/main_action.dart';
import 'package:redux/redux.dart';
import '../../redux/app_state.dart';
import './home.dart';

abstract class HomeViewModel extends State<Home> {
  late Store<AppState> store;

  List name = [];

  void onClickInsert() {
    setState(() {
      name = store.state.mainState.data!;
    });
  }

  void onClickQuery() {
    store.dispatch(SetData(data: ['Yanto', 'Rudi']));
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      store = StoreProvider.of<AppState>(context);
    });
  }
}

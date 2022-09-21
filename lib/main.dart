import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:project_test3/redux/app_state.dart';
import 'package:project_test3/redux/store.dart';
import 'package:project_test3/routes.dart';
import 'package:project_test3/screens/home/home.dart';
import 'package:project_test3/screens/landing/landing.dart';
import 'package:project_test3/screens/lifecycle_manager/lifecycle_manager.dart';
import 'package:project_test3/utils/colors_custom.dart';
import 'package:redux/redux.dart';

Future<void> main() async {
  Store<AppState> store = (await createStore());

  runApp(MyApp(
    store: store,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.store});

  final Store<AppState> store;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
        store: store,
        child: LifecycleManager(
          child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(primarySwatch: Colors.blue),
            home: Landing(
              title: "ini title",
            ),
            routes: routes,
          ),
        ));
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart' as Dio;
import 'package:flutter_redux/flutter_redux.dart';
import 'package:project_test3/providers/providers.dart';
import 'package:project_test3/redux/actions/main_action.dart';
import 'package:project_test3/redux/app_state.dart';
import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './landing.dart';

abstract class LandingViewModel extends State<Landing> {
  late Store<AppState> store;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isLoading = false;

  String error = "";

  void toggleLoading(bool value) {
    setState(() {
      isLoading = value;
    });
  }

  void toggleError(String value) {
    setState(() {
      error = value;
    });
  }

  Future<void> onLoginButtonClicked() async {
    store.dispatch(SetData(data: ["INDO", "USA", "RUSIA"]));

    // toggleLoading(true);

    // try {
    //   dynamic res = await Providers.login(
    //       email: emailController.text, password: passwordController.text);

    //   if (res.statusCode == 200) {
    //     final SharedPreferences prefs = await SharedPreferences.getInstance();
    //     prefs.setString("USER_AUTH", res.data['token']);

    //     dynamic resGetUser = await Providers.getUserData(res.data['token']);

    //     if (resGetUser.statusCode == 200) {
    //       // ignore: use_build_context_synchronously
    Navigator.pushNamedAndRemoveUntil(context, "/Home", (route) => false);
    //     }
    //   }
    // } catch (e) {
    //   if (kDebugMode) {
    //     print(e);
    //   }
    //   toggleLoading(false);
    //   toggleError(e.toString());
    // }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      store = StoreProvider.of<AppState>(context);
    });
  }
}

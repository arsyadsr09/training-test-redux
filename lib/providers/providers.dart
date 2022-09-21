import 'package:dio/dio.dart';
import 'package:project_test3/config/config.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Providers {
  static Future login({required String email, required String password}) async {
    return Dio().post('$HOST/login',
        data: {"email": email, "password": password},
        options: Options(
            followRedirects: false,
            validateStatus: (status) {
              return status! < 1000;
            }));
  }

  static Future getUserData([String? token]) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? jwtToken = prefs.getString("USER_AUTH");

    return Dio().get('$HOST/users',
        options: Options(
            headers: {"Authorization": token ?? jwtToken},
            followRedirects: false,
            validateStatus: (status) {
              return status! < 1000;
            }));
  }
}

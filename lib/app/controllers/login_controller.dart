import 'dart:convert';

import 'package:dotsafety_desktop/app/controllers/base_controller.dart';
import 'package:dotsafety_desktop/app/ui/theme/app_strings.dart';
import 'package:dotsafety_desktop/app/utils/shared_prefs.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends BaseController {
  RxBool loading = false.obs;

  Future<bool> loginUserAccount(String? username, String? password) async {

    dynamic data;
    final prefs = await SharedPreferences.getInstance();

    var url = Uri.parse('${Strings.domain}api/admin/login_admin');

    data = {"username": username, "password": password};

    // Sending parameters to http request. Implemented in base controller
    var result = await sendHttpRequest(url, data, 'post');

    if (result == false) {
      return result;
    } else {
      prefs.setString('user_id', result['user_id']);
      prefs.setString('token', result['token']);
      prefs.setString('email', result['email']);
      prefs.setString('first_name', result['first_name']);
      prefs.setString('last_name', result['last_name']);
      prefs.setString('username', result['username']);
      prefs.setString('user_type', result['user_type']);
      prefs.setString('access_level', result['access_level'].toString());
      prefs.setString('image_url', result['image_url']);

      setMessage("Login Success");
      return Future<bool>.value(true);
    }
    return false;
  }

}

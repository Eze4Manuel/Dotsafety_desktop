import 'package:dotsafety_desktop/app/ui/pages/dashboard.dart';
import 'package:dotsafety_desktop/app/ui/pages/login.dart';
import 'package:dotsafety_desktop/app/ui/theme/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var user_id = prefs.getString('user_id');

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(
      GetMaterialApp(
          title: Strings.appName,
          debugShowCheckedModeBanner: false,
          // routes: Routes.routes,
          home: user_id == null  ? Login() : Dashboard()
      )));

}

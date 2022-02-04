import 'package:dotsafety_desktop/app/ui/pages/login.dart';
import 'package:dotsafety_desktop/app/ui/theme/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();



  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(
      const GetMaterialApp(
          title: Strings.appName,
          debugShowCheckedModeBanner: false,
          // routes: Routes.routes,
          home: Login()
      )));

}

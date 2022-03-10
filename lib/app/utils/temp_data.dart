import 'package:dotsafety_desktop/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void toast(msg) {
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      backgroundColor: AppColors.appPrimaryColor,
      textColor: AppColors.whiteColor,
      fontSize: 14.0);
}

Widget toastNotify(notificationText, notificationLevel) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5.0),
      color: notificationLevel ? AppColors.appPrimaryColor : AppColors.color2,
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          notificationLevel ? Icons.check : Icons.close,
          color: notificationLevel ? Colors.white: Colors.red,
        ),
        const SizedBox(
          width: 12.0,
        ),
        Text(
          notificationText,
          style: TextStyle(color: notificationLevel ? Colors.white: Colors.red),
        ),
      ],
    ),
  );
}

Widget callToastNotify(fToast, toast) {
  return fToast.showToast(
      child: toast,
      toastDuration: const Duration(seconds: 3),
      positionedToastBuilder: (context, child) {
        return Positioned(
          child: child,
          top: 16.0,
          right: 16.0,
        );
      });
}

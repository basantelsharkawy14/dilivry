import 'dart:ui';

import 'package:dilivery_app/screens/help/error_dialog.dart';
import 'package:flutter/material.dart';

class ServerConstants {
  static bool isValidResponse(int statusCode) {
    return statusCode >= 200 && statusCode <= 302;
  }

  static void showDialog1(BuildContext context, String s) {
    showDialog(
      context: context,
      builder: (context) => ErrorPopUp(message: '$s'),
    );
  }

  // static String getUserToken() {
  //   print('_getUserToken()');
  //   User user = User();
  //   print('UserModel');
  //
  //   String userToken = user.userToken;
  //   print(userToken);
  //   // if (userToken == null) throw "User Not Logged In";
  //   return userToken;
  // }

  static const bool IS_DEBUG = true; // TODO: Close Debugging in Release.
  static const String API = "https://worldapp.site/api";
  static const String Login = "${API}/auth/driverlogin";
}

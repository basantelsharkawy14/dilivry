import 'dart:async';
import 'dart:io';

import 'package:dilivery_app/models/user_model.dart';
import 'package:dilivery_app/servise/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class AuthProvider with ChangeNotifier {
  //AuthService _api = ApiProvider.instance;
  UserModel? userModel;

  bool get isAuth => userModel != null;

//   Future<bool> autoLogin() async {
//     // Just to show Splash Screen for couple of seconds
//     print('autoLogin()');
//     await Future.delayed(Duration(seconds: 1));
//     //
//     if (userModel != null) return true;
//     //
//     print(' (userModel != null)');
//     bool isLoggedIn = await User().isLoggedIn;
//     //
//     print(' isLoggedIn  false');
//     if (!isLoggedIn) return false;
//     //
//     print('(!isLoggedIn) return false;');
//     try {
//       print(' autoLogin()  try');
//       //todo   userModel = await _api.getProfile();
// //      await _logoutIfNotActive();
//       // _autoLogout();
//       return true;
//     } on ApiException catch (_) {
//       await User().resetUser();
//       userModel = null;
//       return false;
//     } on SocketException catch (_) {
//       return false;
//     } catch (e) {
// //      Crashlytics.instance.recordError(
// //        "Manuel Report ${e.toString()}",
// //        stackTrace,
// //      );
//       return false;
//     } finally {
//       notifyListeners();
//     }
//   }



  Future<void> login(
      String phone,
      String password,
      ) async {
    userModel = await AuthService.instance.login(phone, password);
   // getProfile();
    notifyListeners();
  }



//   Future<void> logout() async {
//     await userModel?.data?.resetUser();
//     userModel = null;
// //    _timer?.cancel();
//
//     notifyListeners();
//   }
}

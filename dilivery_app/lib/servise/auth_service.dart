import 'package:dilivery_app/models/user_model.dart';
import 'package:dilivery_app/servise/vars.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'api_exceptions.dart';


class AuthService {
  AuthService._();

  static final AuthService instance = AuthService._();
  static UserModel? user;

  var dio = Dio()
    ..interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      compact: false,
    ));

  //
  static Map<String, String> apiHeaders = {
    "Content-Type": "application/json",
    "X-Requested-With": "XMLHttpRequest",
    "Content-Language": "ar",
  };

  Future<UserModel?> login(String phone, String password) async {
    // Json Data
    var _data = {
      "phone": "$phone",
      "password": "$password",
    };
    print('login start');
    // Http Request

    var _response = await dio.post(ServerConstants.Login,
        data: _data,
        options: Options(
          headers: {
            ...apiHeaders,
          },
          validateStatus: (status) {
            return status! < 500;
          },
        ));

    print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
    print("${_response.data}");

    if (ServerConstants.isValidResponse(_response.statusCode!)) {
      // OK
      if (!ServerConstants.isValidResponse(
          int.parse(_response.data[0]))) {
        throw ApiException.fromApi(_response.statusCode!, _response.data);
      }

      user = UserModel.fromJson(_response.data);
      return user;
      //  return UserModel.fromJson(_response.body);
    } else {
      // DioErrorType type;
      // No Success
      print(
          'ApiException....login***********************************************************');

      // print(_response.request.uri.data);
      print('...................................................');

      throw ApiException.fromApi(_response.statusCode!, _response.data);
    }
  }

}
import 'package:dilivery_app/provider/auth_provider.dart';
import 'package:dilivery_app/screens/help/constants.dart';
import 'package:dilivery_app/screens/help/default_button.dart';
import 'package:dilivery_app/screens/help/form_error.dart';
import 'package:dilivery_app/screens/help/help.dart';
import 'package:dilivery_app/screens/help/loading_screen.dart';
import 'package:dilivery_app/screens/home/home_screen.dart';
import 'package:dilivery_app/servise/api_exceptions.dart';
import 'package:dilivery_app/servise/auth_service.dart';
import 'package:dilivery_app/servise/vars.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? phone;
  String? password;
  bool _passwordVisible = false;
  GlobalKey<FormState> _formKey = GlobalKey();

  final List<String> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error!);
      });
  }
  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  Future<void> _submit() async {
    _formKey.currentState?.validate();
    try {
      print('0000000000000000000000000000');
      if (_formKey.currentState!.validate()) {
        print('111111111111111111111');
        _formKey.currentState?.save();
         LoadingScreen.show(context);
        await  AuthService.instance.login(phone!, password!);

       // Navigator.of(context).popUntil((route) => route.isFirst);
        helpNavigateTo(context, HomeScreen());
      }
    } on ApiException catch (_) {
      print('ApiException');
      Navigator.of(context).pop();
      ServerConstants.showDialog1(context, _.toString());
    } on DioError catch (e) {
      //<<<<< IN THIS LINE
      print(
          "e.response.statusCode    ////////////////////////////         DioError");
      if (e.response?.statusCode == 400) {
        print(e.response?.statusCode);
      } else {
        print(e.message);
        // print(e?.request);
      }
    } catch (e) {
      print('catch');
      print(e);

      Navigator.of(context).pop();
      ServerConstants.showDialog1(context, e.toString());
    } finally {
      if (mounted) setState(() {});
    }
  }


  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Login", style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black,),onPressed: (){Navigator.pop(context);},),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 14),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(15),
              //   color: Colors.white,
              // ),
              child: TextFormField(
                initialValue: "521452145",
                onSaved: (newValue) => phone = newValue,
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    removeError(error: kPhoneNullError);
                  } else if (value.length >= 8) {
                    removeError(error: kShortPhoneError);
                  }
                  return null;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    addError(error: kPhoneNullError);
                    return "";
                  } else if (value.length < 8) {
                    addError(error: kShortPhoneError);
                    return "";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                            color:   Color(0xffF6F6F6),
                            width: 3.0)),
                    hintText: ("Enter your phone number"),
                    hintStyle: TextStyle(
                        color: Color(0xffD7D7D7),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                    prefixIcon: Icon(
                      Icons.phone,
                   //   color: kColorGray,
                      size: 18,
                    )),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 14),
              child: TextFormField(
                 initialValue: "123456789",
                onSaved: (newValue) => password = newValue,
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    removeError(error: kPassNullError);
                  } else if (value.length >= 8) {
                    removeError(error: kShortPassError);
                  }
                  return null;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    addError(error: kPassNullError);
                    return "";
                  } else if (value.length < 8) {
                    addError(error: kShortPassError);
                    return "";
                  }
                  return null;
                },
                obscureText: !_passwordVisible,
                decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onLongPress: () {
                        setState(() {
                          _passwordVisible = true;
                        });
                      },
                      onLongPressUp: () {
                        setState(() {
                          _passwordVisible = false;
                        });
                      },
                      child: Icon(
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                    ),
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                            color:   Color(0xffF6F6F6),
                            width: 3.0)),
                    hintText: ("Enter your password"),
                    hintStyle: TextStyle(
                        color: Color(0xffD7D7D7),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                    prefixIcon: Icon(
                      Icons.lock,
                      //   color: kColorGray,
                      size: 18,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("forget password", style: TextStyle(color: kColorAccent, fontSize: 14),),
            ),
            FormError(errors: errors),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 18),
              child: DefaultButton(
                text: "Login",
                press: () {
                  _submit();
                 // helpNavigateTo(context, HomeScreen());
                },
                color: kColorAccent, height: 54, fontSize: 20, radius:18, fontColor:  Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

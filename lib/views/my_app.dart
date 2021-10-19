import 'package:flutter/material.dart';
import 'package:heyto/views/my_code.dart';
import 'package:heyto/views/phoneNumber_page.dart';
import 'package:heyto/views/signup_page.dart';
import 'package:heyto/views/verifyYourPhone_page.dart';
import 'package:heyto/views/welcome_to_heyto.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const SIGNUP = "/";
  static const VERIFY_PHONE = "verify_your_phoneNumber";
  static const SET_PHONE = "inform_your_phoneNumber";
  static const MY_CODE = "My_Code_Is";
  static const WELCOME_TO_HEYTO = "Welcome_To_Heyto";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SIGNUP: (context) => SignupPage(),
        VERIFY_PHONE: (context) => VerifyYourPhonePage(),
        SET_PHONE: (context) => PhoneNumberPage(),
        MY_CODE: (context) => MyCodePage(),
        WELCOME_TO_HEYTO: (context) => WelcomeToHeytoPage(),
      },
    );
  }
}

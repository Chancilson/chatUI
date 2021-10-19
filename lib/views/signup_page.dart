import 'dart:html';
import 'dart:js';
import 'package:flutter/material.dart';
import 'package:heyto/widget/Component.dart';
import 'package:heyto/views/verifyYourPhone_page.dart';
import 'package:heyto/views/my_app.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF27E150), Color(0xFF00E0AA)]),
        ),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Container(
            padding: EdgeInsets.fromLTRB(32.0, 130.27, 31.98, 130.61),
            child: Image.asset("images/logotipo.png"),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Text(
              "By clicking Login, you agree with our Terms. learn how we process your data in our Privacy Policy and Cookies Policy",
              style: TextStyle(color: Colors.white, fontSize: 13.0),
              textAlign: TextAlign.center,
            ),
          ),
          Component.login_button("images/gogle.png", "LOG IN WITH GOOGLE"),
          Component.login_button("images/facebook.png", "LOG IN WITH FACEBOOK"),
          Component.login_button("images/text.png", "LOG IN WITH PHONE NUMBER", context: context, route_name: MyApp.VERIFY_PHONE),
          Container(
            padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: Text(
              "Trouble loggin in?",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          )
        ]),
      ),
    ));
  }

  void callNextView(context) {
    Navigator.pushReplacement(context, 
      MaterialPageRoute(builder: (context) => VerifyYourPhonePage())
    );
  }
}
import 'package:flutter/material.dart';
import 'package:heyto/views/my_app.dart';
import 'package:heyto/widget/Component.dart';
import 'package:heyto/views/phoneNumber_page.dart';

class VerifyYourPhonePage extends StatefulWidget {
  const VerifyYourPhonePage({ Key? key }) : super(key: key);

  @override
  _VerifyYourPhonePageState createState() => _VerifyYourPhonePageState();
}

class _VerifyYourPhonePageState extends State<VerifyYourPhonePage> {
  var page = new PhoneNumberPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top: 80.0),
                child: Center(
                  child: Image.asset("images/mobile.png"),
                ), 
              ),
              Positioned(
                child: Container(
                  padding: EdgeInsets.only(top: 120.0),
                  child: Center(
                    child: Image.asset("images/Check_fill.png"),
                  ), 
                ), 
              ),
            ],
          ),
          Component.titleText("Verify your phone"),
          Component.descriptionText("This will help protect your account and provides you another way to log in. Your number will not be Shared with other Hayto users", 19.0),
          Component.primary_button("VERIFY NOW", context: context, route_name: MyApp.SET_PHONE),
        ]
      ),
    );
  }
}
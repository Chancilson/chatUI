import 'package:flutter/material.dart';
import 'package:heyto/widget/Component.dart';
import 'package:heyto/views/my_app.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class MyCodePage extends StatefulWidget {
  const MyCodePage({Key? key}) : super(key: key);

  @override
  _MyCodePageState createState() => _MyCodePageState();
}

class _MyCodePageState extends State<MyCodePage> {
  bool _valide = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Component.previous_button(context),
          Container(
            padding: EdgeInsets.only(top: 15.0, bottom: 25.0),
            child: Component.titleText("My Code is"),
          ),
          Container(
            padding: EdgeInsets.only(left: 25.0, right: 25.0, bottom: 50.0),
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  "935555500",
                  style: TextStyle(
                      color: Color(0xFF787475),
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0),
                )),
                Expanded(
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "RESEND",
                          style: TextStyle(
                              color: Color(0xFFC7C7C7),
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0),
                        ))),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: PinCodeTextField(
              appContext: context,
              length: 6,
              obscureText: false,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                borderWidth: 2.0,
                shape: PinCodeFieldShape.underline,
                borderRadius: BorderRadius.zero,
                fieldHeight: 50,
                fieldWidth: 40,
                activeFillColor: Colors.transparent,
                inactiveFillColor: Colors.transparent,
                selectedFillColor: Colors.transparent,
                errorBorderColor: Color(0xFFC7C7C7),
              ),
              animationDuration: Duration(milliseconds: 300),
              backgroundColor: Colors.transparent,
              enableActiveFill: true,
              //errorAnimationController: errorController,
              //controller: textEditingController,
              onChanged: (value) {
                print(value);
                setState(() {
                  _valide = false;
                });
              },
              onCompleted: (v) {
                print("Completed"+v);
                setState(() {
                  _valide = true;
                });
              },
              beforeTextPaste: (text) {
                print("Allowing to paste $text");
                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                return true;
              },
            ),
          ),
          Component.show_button(_valide,
              context: context, route_name: MyApp.WELCOME_TO_HEYTO),
        ],
      ),
    );
  }
}

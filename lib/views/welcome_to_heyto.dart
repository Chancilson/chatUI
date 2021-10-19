import 'package:flutter/material.dart';
import 'package:heyto/widget/Component.dart';

class WelcomeToHeytoPage extends StatefulWidget {
  const WelcomeToHeytoPage({ Key? key }) : super(key: key);

  @override
  _WelcomeToHeytoPageState createState() => _WelcomeToHeytoPageState();
}

class _WelcomeToHeytoPageState extends State<WelcomeToHeytoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Component.previous_button(context),
           Container(
            padding: EdgeInsets.only(top: 15.0, bottom: 25.0),
            child: Component.titleText("Welcome to Heyto"),
          ),
        ],
      ),
    );
  }
}
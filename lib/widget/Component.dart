import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Component {
  //Build login's buttons
  static Widget login_button(image, text, {context, route_name}) {
    return Container(
      padding: EdgeInsets.only(bottom: 15.0),
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            padding: MaterialStateProperty.all(EdgeInsets.all(15.0)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
          ),
          onPressed: () {
            callNextView(context, route_name);
          },
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(right: 20.0),
                child: Image.asset(image),
              ),
              Expanded(
                  child: Text(text,
                      style: TextStyle(
                          color: Color(0xFF787475),
                          fontSize: 13.5,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins"))),
            ],
          )),
    );
  }

  static Widget titleText(String text) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 25.0, bottom: 25.0),
        child: GradientText(
          text,
          style: TextStyle(
              fontSize: 25.0,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700),
          colors: [
            Color(0xFF27E150),
            Color(0xFF00E0AA),
          ],
        ),
      ),
    );
  }

  static Widget descriptionText(String text, double size) {
    return Container(
      padding: EdgeInsets.only(bottom: 42.0, left: 40.0, right: 40.0),
      child: Text(
        text,
        style: TextStyle(
            color: Color(0xFF989898),
            fontFamily: "Poppins",
            fontWeight: FontWeight.w400),
        textAlign: TextAlign.center,
      ),
    );
  }

  static Widget disabled_button(String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
        padding: EdgeInsets.only(bottom: 15.0, left: 25.0, right: 25.0),
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color(0xFFE6E9F0)),
            padding: MaterialStateProperty.all(EdgeInsets.all(15.0)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
          ),
          onPressed: null,
          child: Text(text,
              style: TextStyle(
                  color: Color(0xFF879099),
                  fontSize: 13.5,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins")))
      ),
      ],
    );
  }

  static Widget previous_button(context) {
    return Container(
      alignment: Alignment.topLeft,
      child: IconButton(
        iconSize: 20.0,
        color: Color(0xFFC7C7C7),
        onPressed: () {
          Component.goBack(context);
        },
        icon: Icon(
          Icons.arrow_back,
        ),
      ),
    );
  }

  static Widget primary_button(String text, {context, route_name}) {
    return Container(
      padding: EdgeInsets.only(left: 40.0, right: 40.0),
      child: ElevatedButton(
        onPressed: () {
          callNextView(context, route_name);
        },
        style: ElevatedButton.styleFrom(
            elevation: 5,
            padding: EdgeInsets.all(0.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 98.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF27E150),
                Color(0xFF00E0AA),
              ],
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  static callNextView(context, route_name) {
    Navigator.of(context).pushNamed(route_name);
  }

  static goBack(context) {
    Navigator.of(context).pop();
  }

  static show_button(bool validated, {context, route_name}) {
    if (validated) {
      return Component.primary_button("CONTINUE", context: context, route_name: route_name);
    } else {
      return Component.disabled_button("CONTINUE");
    } 
  }
}



import 'package:flutter/material.dart';
import 'package:heyto/views/my_app.dart';
import 'package:heyto/widget/Component.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneNumberPage extends StatefulWidget {
  const PhoneNumberPage({Key? key}) : super(key: key);

  @override
  _PhoneNumberPageState createState() => _PhoneNumberPageState();
}

class _PhoneNumberPageState extends State<PhoneNumberPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'IR';
  PhoneNumber number = PhoneNumber(isoCode: 'IR');
  bool _valide = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            Component.previous_button(context),
            Container(
              padding: EdgeInsets.only(top: 15.0, bottom: 25.0),
              child: Component.titleText("My Number is"),
            ),
            Container(
                padding: EdgeInsets.only(left: 25.0, right: 25.0),
                child: InternationalPhoneNumberInput(
                    autoValidateMode: AutovalidateMode.onUserInteraction,
                    onInputChanged: (PhoneNumber number) {
                      print(number.phoneNumber);
                    },
                    onInputValidated: (bool value) {
                      setState(() {
                        print(value);
                        _valide = value;
                      });
                    },
                    selectorConfig: SelectorConfig(
                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    ),
                    ignoreBlank: false,
                    selectorTextStyle: TextStyle(color: Color(0xFF787475)),
                    initialValue: number,
                    textFieldController: controller,
                    formatInput: false,
                    keyboardType: TextInputType.numberWithOptions(
                        signed: true, decimal: true),
                    onSaved: (PhoneNumber number) {
                      print('On Saved: $number');
                    })),
            Container(
              padding: EdgeInsets.only(
                top: 15.0,
              ),
              child: Component.descriptionText(
                  "When you tap Continue, Heyto will send a text with verification code. Message and data rates may apply The verified phone number can be used to login",
                  14.0),
            ),
            Component.show_button(_valide, context: context, route_name: MyApp.MY_CODE),
          ]),
    );
  }
}

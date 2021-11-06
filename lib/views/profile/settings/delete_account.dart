import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:heyto/ui/button_with_gradient.dart';

class DeleteAccountPage extends StatelessWidget {
  const DeleteAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const BackButton(
          color: Colors.grey,
        ),
        automaticallyImplyLeading: false,
        title: const Text(
          "Delete Account",
          style: TextStyle(
            color: Color(0xFF47525C),
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 91,
                    height: 91,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50), bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50),),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [ 
                          Color(0xFF27E150),
                          Color(0xFF00E0AA),
                        ]
                      ),
                    ),

                    child: Center(
                      child: SvgPicture.asset("assets/svg/play.svg",
                      width: 44,
                      height: 44,
                      ),
                    ),

                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "PAUSE MY ACCOUNT",
                    style: TextStyle(
                      color: Color(0xFF47525C),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "If you’d like to keep your account but not be shown to others you can pause your account instead. You can turn this off in settings.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF879099),
                    ),
                  ),
                  const SizedBox(height: 180),
                  ButtonWithGradient(
                    borderRadius: 100.0,
                    text: "PAUSE MY ACCOUNT",
                    beginColor: 0xFF27E150,
                    endColor: 0xFF00E0AA,
                    height: 46,
                    marginLeft: 5,
                    marginRight: 5,
                    onTap: () {},
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15.0),
                                    child: CircleAvatar(
                                      radius: 48,
                                      backgroundColor: Colors.white,
                                      child: SvgPicture.asset("assets/svg/sad.svg",
                                      color: const Color(0xFFCCD2E3),
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    "Are you sure yoou want to delete your account?",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 35,
                                  ),
                                  ButtonWithGradient(
                                    borderRadius: 100,
                                    text: "Delete My Account",
                                    marginLeft: 15,
                                    marginRight: 15,
                                    height: 50,
                                    beginColor: 0xFFFA3967,
                                    endColor: 0xFFFA3967,
                                    onTap: () {},
                                  ),
                                  const SizedBox(height: 20),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text(
                                      "Pause My Account",
                                      style: TextStyle(
                                        color: Color(0xFF0094FF),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    child: const Text(
                      "Delete My Account",
                      style: TextStyle(
                        color: Color(0xFF879099),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

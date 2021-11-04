import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:heyto/ui/container_with_corner.dart';

class PushNotificationsPage extends StatefulWidget {
  const PushNotificationsPage({ Key? key }) : super(key: key);

  @override
  _PushNotificationsPageState createState() => _PushNotificationsPageState();
}

class _PushNotificationsPageState extends State<PushNotificationsPage> {
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
          "Push Notification",
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
            notification("Messages","Get updates about new messages", false),
            notification("Matches","Get updates about new Matches", true),
            notification("Liked you","Get updates about people you like you", true),
          ],
        ),
      ),
      
    );
  }

  ContainerCorner notification(String title, String description, bool active) {
    return ContainerCorner(
            borderColor: const Color(0xFFB5B9C5),
            height: 80,
            borderRadius: 10,
            marginTop: 15,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: Color(0xFF47525C),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Switch(
                          activeColor: const Color(0xFF27E150),
                          value: active,
                          onChanged: (bool value) {
                            setState(() {
                              active = value;
                            });
                          }),
                    ],
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                      color: Color(0xFFB5B9C5),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
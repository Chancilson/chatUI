import 'package:flutter/material.dart';
import 'package:heyto/ui/button_with_gradient.dart';
import 'package:heyto/ui/container_with_corner.dart';
import 'package:heyto/views/profile/settings/push_notification.dart';

import 'delete_account.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool active = true;
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
          "Settings",
          style: TextStyle(
            color: Color(0xFF47525C),
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10.0, left: 16, right: 16),
        child: ListView(
          children: [
            ContainerCorner(
              borderRadius: 10.0,
              colors: const [
                Color(0xFF00E0AA),
                Color(0xFFFF00B8),
              ],
              height: 72,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 67,
                        height: 25,
                        margin: const EdgeInsets.only(top: 12),
                        alignment: Alignment.topCenter,
                        child: Image.asset("assets/images/logo.png"),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 10,
                        ),
                        child: Text(
                          "Stars",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xFFFFB800)),
                        ),
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Unlimited Likes & More!",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            title("Account Settings"),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("Close"),
                          ),
                        ],
                        title: const Text("Change Phone Number"),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                label: Text("Change Phone Number"),
                              ),
                              initialValue: "09120323345",
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const ButtonWithGradient(
                              text: "Change",
                              height: 30,
                              beginColor: 0xFF00E0AA,
                              endColor: 0xFFFF00B8,
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: ContainerCorner(
                borderColor: const Color(0xFFB5B9C5),
                height: 50,
                borderRadius: 10,
                marginTop: 15,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Phone Number",
                        style: TextStyle(
                          color: Color(0xFF47525C),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "09120323345",
                        style: TextStyle(
                          color: Color(0xFFB5B9C5),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            title("Activity Status"),
            ContainerCorner(
              borderColor: const Color(0xFFB5B9C5),
              height: 50,
              borderRadius: 10,
              marginTop: 15,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Recently Active Status",
                      style: TextStyle(
                        color: Color(0xFF47525C),
                        fontSize: 13,
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
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Allow Heyto members to see if you were recently active within the last 24 hours on Heyto. If you have this turned off, they will not be able to see your recently active status.",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color(0xFFB5B9C5),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            title("Notifications"),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PushNotificationsPage()));
              },
              child: option("Push Notifications"),
            ),
            title("Show Distances in"),
            ContainerCorner(
              borderColor: const Color(0xFFB5B9C5),
              height: 50,
              borderRadius: 10,
              marginTop: 15,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Recently Active Status",
                      style: TextStyle(
                        color: Color(0xFF47525C),
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            title("Contact Us"),
            option("Help & Support"),
            title("Community"),
            ContainerCorner(
              borderColor: const Color(0xFFB5B9C5),
              height: 80,
              borderRadius: 10,
              marginTop: 15,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Community Guidelines",
                      style: TextStyle(
                        color: Color(0xFF47525C),
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Safety Tips",
                      style: TextStyle(
                        color: Color(0xFF47525C),
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DeleteAccountPage()));
              },
              child: ContainerCorner(
              borderColor: const Color(0xFFB5B9C5),
              height: 50,
              borderRadius: 10,
              marginTop: 15,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                    "Delete Account",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                  ] ,
                ),
              ),)
            ),

           const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  ContainerCorner option(String option) {
    return ContainerCorner(
      borderColor: const Color(0xFFB5B9C5),
      height: 50,
      borderRadius: 10,
      marginTop: 15,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              option,
              style:const TextStyle(
                color: Color(0xFF47525C),
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding title(String title) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 25,
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

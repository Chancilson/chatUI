import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:heyto/ui/button_with_gradient.dart';
import 'package:heyto/ui/container_with_corner.dart';
import 'package:heyto/views/profile/edit/edit_home.dart';
import 'package:heyto/views/profile/profile_details.dart';
import 'package:heyto/views/profile/settings/settings.dart';

class ProfileHome extends StatelessWidget {
  const ProfileHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {
        return Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ProfileDetails()));
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsPage()));
              },
              icon: SvgPicture.asset("assets/svg/setting.svg")),
          title: Container(
            width: 100,
            height: 30,
            margin: const EdgeInsets.only(top: 12),
            alignment: Alignment.topCenter,
            child: Image.asset("assets/images/logo.png"),
          ),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const EditPage()) );
                },
                icon: SvgPicture.asset("assets/svg/edit.svg")),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 27.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ProfileDetails()));
                        },
                        child: Center(
                          child: Container(
                            padding: const EdgeInsets.only(
                              top: 50.0,
                            ),
                            alignment: Alignment.center,
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 3,
                                color: const Color(0xFF27E150),
                              ),
                              shape: BoxShape.circle,
                              image: const DecorationImage(
                                  image: AssetImage("assets/images/nonearound.png")),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          bottom: 25,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Hamed",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              ", 28",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ContainerCorner(
                        borderRadius: 10.0,
                        colors: const [
                          Color(0xFF00E0AA),
                          Color(0xFFFF00B8),
                        ],
                        height: 72,
                        marginLeft: 10.0,
                        marginRight: 10.0,
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
                                    style: TextStyle(
                                        fontSize: 15, color: Color(0xFFFFB800)),
                                  ),
                                )
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Text(
                                "Unlimited Likes & More!",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 80.0,
                        ),
                        child: Column(
                          children: [
                            SvgPicture.asset("assets/svg/add.svg"),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 20,
                                bottom: 30,
                                right: 50,
                                left: 50,
                              ),
                              child: RichText(
                                  textAlign: TextAlign.center,
                                  text: const TextSpan(children: [
                                    TextSpan(
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                      text:
                                          "By adding each of your friends, you'll earn ",
                                    ),
                                    TextSpan(
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                      text: "20 tickets!",
                                    )
                                  ])),
                            ),
                          ],
                        ),
                      ),
                      ContainerCorner(
                        borderRadius: 10,
                        height: 35,
                        marginTop: 20,
                        marginLeft: 30,
                        marginRight: 30,
                        color: const Color(0xFFF3F5F9),
                        child: Row(
                          children: [
                            ButtonWithGradient(
                              marginRight: 3,
                              onTap: () {},
                              height: 35,
                              activeBoxShadow: false,
                              text: "Copy",
                              topLeftBorder: 10.0,
                              bottomLeftBorder: 10.0,
                              width: 70,
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              beginColor: 0xFF27E150,
                              endColor: 0xFF00E0AA,
                            ),
                            const Text(
                              "heyto.app/invitetoheyto1234",
                              style: TextStyle(
                                color: Color(0xFF879099),
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

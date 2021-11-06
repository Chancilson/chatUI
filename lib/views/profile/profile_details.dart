import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:heyto/ui/container_with_corner.dart';
import 'package:heyto/ui/text_with_tap.dart';

class ProfileDetails extends StatefulWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  int countPicture = 0;
  List<String> pictures = [
    "assets/images/girls/img_3.jpeg",
    "assets/images/girls/img_1.jpeg",
    "assets/images/girls/img_2.jpeg",
    "assets/images/girls/img_5.jpeg",
    "assets/images/girls/img_4.jpeg",
    "assets/images/girls/img_6.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.grey,
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Profile",
          style: TextStyle(
            color: Color(0xFF47525C),
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: SvgPicture.asset("assets/svg/edit.svg")),
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (countPicture == pictures.length - 1) {
                          countPicture = 0;
                          return;
                        }else{
                          countPicture++;
                        }
                      });
                    },
                    child: Container(
                      alignment: Alignment.topCenter,
                      margin: const EdgeInsets.only(
                        right: 10,
                        left: 10,
                      ),
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage(pictures[countPicture])),
                      ),
                    ),
                  ),
                  Center(child: pictureStep(context, countPicture, pictures.length))
                ]),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 20,
                    bottom: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Hamed",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Text(
                        ", 28",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      SizedBox(
                          width: 20,
                          height: 20,
                          child: SvgPicture.asset("assets/svg/discount.svg"))
                    ],
                  ),
                ),
                info("assets/svg/prof.svg", "Co-founder Casset"),
                info("assets/svg/school.svg",
                    "Islamic Azad University damavand"),
                info("assets/svg/sex.svg", "Straight, Gay, Lesbian"),
                info("assets/svg/country.svg", "Tehran, Iran"),
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    "About",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 10, right: 8),
                  child: Text(
                    "I love any movie where they spontaneously My interest in technology and the Internet has led me to work in this field and create two applications and websites, one is a music player and the other is a dating program. In essence, I am the creator of my own ideas in the virtual world.🙂📱🌐",
                    style: TextStyle(
                      color: Color(0xFF879099),
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    "Passions",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: passionsStepWidget(),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                  child: Text(
                    "Instagram Photos",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Stack(children: [
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(
                      right: 10,
                      left: 10,
                    ),
                    height: 198,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xFF27E150).withOpacity(0.9),
                          const Color(0xFF00E0AA).withOpacity(0.9)
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: cards(context),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 56),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/svg/insta.svg"),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "Connect Instagram",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Padding info(String icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        bottom: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            width: 7,
          ),
          SizedBox(width: 15, height: 15, child: SvgPicture.asset(icon)),
          const SizedBox(
            width: 7,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Color(0xFF879099),
            ),
          ),
        ],
      ),
    );
  }
}

Widget passionsStepWidget() {
  List<String> passion = ["Art", "Music", "Movie", "Coffee", "Travel"];
  return Container(
    margin: const EdgeInsets.only(top: 25),
    child: SingleChildScrollView(
      //controller: _scrollController,
      child: Wrap(
        spacing: 10.0, // gap between adjacent chips
        runSpacing: 10.0,
        alignment: WrapAlignment.start,
        //crossAxisAlignment: WrapCrossAlignment.center,
        children: List.generate(passion.length, (index) {
          return ContainerCorner(
            borderRadius: 70,
            height: 32,
            colors: const [Color(0xFF27E150), Color(0xFF00E0AA)],
            borderColor: const Color(0xFF27E150),
            borderWidth: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 6),
              child: TextWithTap(passion[index],
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  marginLeft: 14,
                  marginRight: 14,
                  textAlign: TextAlign.center,
                  color: Colors.white),
            ),
          );
        }),
      ),
    ),
  );
}

Widget cards(context) {
  return Container(
    margin: const EdgeInsets.only(
      top: 10,
      right: 10,
      left: 10,
      bottom: 10,
    ),
    child: SingleChildScrollView(
      //controller: _scrollController,
      child: Wrap(
        spacing: 10.0, // gap between adjacent chips
        runSpacing: 10.0,
        alignment: WrapAlignment.start,
        //crossAxisAlignment: WrapCrossAlignment.center,
        children: List.generate(8, (index) {
          return ContainerCorner(
            borderRadius: 8,
            height: 80,
            width: (MediaQuery.of(context).size.width / 4) - 20,
            color: const Color(0xFFB5B9C5).withOpacity(0.3),
          );
        }),
      ),
    ),
  );
}

Widget pictureStep(context, int step, int numberOfPitrures) {
  return Container(
    margin: const EdgeInsets.only(
      top: 10,
      right: 10,
      left: 10,
      bottom: 10,
    ),
    child: SingleChildScrollView(
      child: Wrap(
        spacing: 10.0, // gap between adjacent chips
        runSpacing: 10.0,
        alignment: WrapAlignment.start,
        children: List.generate(numberOfPitrures, (index) {
          return ContainerCorner(
            borderRadius: 8,
            height: 8,
            width: (MediaQuery.of(context).size.width / numberOfPitrures) - 20,
            color: index == step ? Colors.white : Colors.white.withOpacity(0.5),
          );
        }),
      ),
    ),
  );
}

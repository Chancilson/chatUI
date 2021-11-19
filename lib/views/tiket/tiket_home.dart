import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:heyto/ui/button_with_gradient.dart';
import 'package:heyto/ui/container_with_corner.dart';
import 'package:heyto/views/tiket/ads.dart';

class TikeHome extends StatefulWidget {
  const TikeHome({Key? key}) : super(key: key);

  @override
  _TikeHomeState createState() => _TikeHomeState();
}

class _TikeHomeState extends State<TikeHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: const BackButton(
          color: Colors.grey,
        ),
        title: Container(
          width: 100,
          height: 30,
          margin: const EdgeInsets.only(top: 12),
          alignment: Alignment.topCenter,
          child: Image.asset("assets/images/logo.png"),
        ),
        elevation: 0,
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
                    Center(
                      child: SizedBox(
                        width: 200,
                        height: 200,
                        child: Image.asset("assets/images/ticket-star.png")
                        ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 90,
                        right: 90,
                      ),
                      child: const Center(
                        child: Text(
                          "Get 2 tickets by watching each ad",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30)
                        ),
                      ),
                      height: 49,
                      width: 125,
                      margin: const EdgeInsets.only(
                        left: 50,
                        right: 50,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/svg/ticket_icon.svg"),
                          const SizedBox( width: 10),
                          const Text(
                          "200",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                        ),
                        ],
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ButtonWithGradient(
                        text: "WATCH THE AD",
                        onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) => const TiketAds()) );
                        },
                        borderRadius: 20,
                        textColor: Colors.white,
                        beginColor: 0xFF27E150,
                        endColor: 0xFF00E0AA,
                        height: 35,
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
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
    );
  }
}

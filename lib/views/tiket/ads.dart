import 'package:flutter/material.dart';
import 'package:heyto/ui/button_with_gradient.dart';
import 'package:heyto/views/tiket/components.dart';
import 'package:heyto/views/tiket/wave.dart';
import 'dart:async';

class TiketAds extends StatefulWidget {
  const TiketAds({Key? key}) : super(key: key);

  @override
  _TiketAdsState createState() => _TiketAdsState();
}

class _TiketAdsState extends State<TiketAds> {
  int countSteps = 0;
  List<String> pictures = [
    "assets/images/ticket_llikes.png",
    "assets/images/ticket_love.png",
    "assets/images/ticket_say.png"
  ];
  List<String> ticketDescription = [
    "Unlimited Likes",
    "Who loves you",
    "Say hey more"
  ];
  List<String> ticketLegend = [
    "Send as many  Like as you want",
    "See who Likes you & match instantly",
    "Send up to 5 Hey per day"
  ];
  showNextTicket() {
    setState(() {
      if (countSteps == pictures.length - 1) {
        countSteps = 0;
        return;
      } else {
        countSteps++;
        return;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Timer.periodic( const Duration(seconds: 1), (timer) {
    //   showNextTicket();
    // });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Stack(children: [
                      Opacity(
                        opacity: 0.75,
                        child: ClipPath(
                          clipper: WeveClipper(),
                          child: Container(
                            padding: const EdgeInsets.only(
                              top: 15,
                            ),
                            height: 200,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/tickets_photo_bg.png"),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                        height: 40,
                        child: BackButton(
                          color: Colors.grey,
                        ),
                      ),
                    ]),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: Image.asset(pictures[countSteps])),
                        Text(ticketDescription[countSteps]),
                        Text(ticketLegend[countSteps]),
                        ticketStep(context, countSteps, pictures.length),
                        Text(countSteps == 2
                            ? "Your ticket assets"
                            : "Your ticket inventory "),
                        ticketFree(),
                        tiketCards(context),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: ButtonWithGradient(
                            text: countSteps == 0
                                ? "You can add more tickets"
                                : "Increase your tickets",
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const TiketAds()));
                            },
                            borderRadius: 20,
                            textColor: Colors.white,
                            beginColor: 0xFF27E150,
                            endColor: 0xFF00E0AA,
                            height: 35,
                          ),
                        ),
                        const Text("You do not have to pay for the ticket."),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

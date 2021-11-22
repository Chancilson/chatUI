import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:heyto/ui/container_with_corner.dart';

Container ticketFree() {
  double borderTopRight =30.0;
  double borderTopLeft =30.0;
  double borderBottomRight =30.0;
  double borderBottomLeft = 30.0 ;

  return Container(
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(borderTopRight),
          bottomRight: Radius.circular(borderBottomRight),
          topLeft: Radius.circular(borderTopLeft),
          bottomLeft: Radius.circular(borderBottomLeft)),
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
        const SizedBox(width: 10),
        const Text(
           "200",
          style: TextStyle(
              color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}

Widget ticketStep(context, int step, int numberOfSteps) {
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
        children: List.generate(numberOfSteps, (index) {
          return GestureDetector(
            onTap: (){},
            child: ContainerCorner(
              borderRadius: 8,
              height: 8,
              width: 8,
              color: index == step
                  ? const Color(0xFF27E150)
                  : const Color(0xFFCCD2E3),
            ),
          );
        }),
      ),
    ),
  );
}

Widget tiketCards(context) {
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
        children: List.generate(2, (index) {
          return ContainerCorner(
            shadowColor: const Color(0xFFCCD2E3),
            setShadowToBottom: true,
              borderRadius: 8,
              height: 145,
              width: (MediaQuery.of(context).size.width / 2) - 20,
              color: Colors.white,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Text(
                        index == 0 ? "3" : "1",
                        style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text(
                      "month",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    ContainerCorner(
                      borderRadius: 8,
                      height: 45,
                      width: (MediaQuery.of(context).size.width / 2) - 20,
                      color: index == 0
                          ? const Color(0xFF27E150)
                          : const Color(0xFFCCD2E3),
                    )
                  ],
                ),
              ));
        }),
      ),
    ),
  );
}

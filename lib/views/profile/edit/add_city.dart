import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:heyto/ui/container_with_corner.dart';

class AddCityPage extends StatefulWidget {
  const AddCityPage({Key? key}) : super(key: key);

  @override
  _AddCityPageState createState() => _AddCityPageState();
}

class _AddCityPageState extends State<AddCityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const BackButton(
          color: Colors.grey,
        ),
        automaticallyImplyLeading: false,
        title: const Text(
          "Add City",
          style: TextStyle(
            color: Color(0xFF47525C),
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.only(
          left: 10.0,
          right: 10.0,
          top: 15,
        ),
        child: ListView(children: [
          ContainerCorner(
            height: 55,
            borderRadius: 10,
            marginTop: 15,
            color: const Color(0xFFF3F5F9),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.search,
                    size: 27,
                    color: Color(0xFF879099),
                  ),
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF47525C),
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                      ),
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Color(0xFF47525C),
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                        ),
                        hintText: "Search for city",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ContainerCorner(
            height: 55,
            borderRadius: 10,
            marginTop: 15,
            color: const Color(0xFFF3F5F9),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.place,
                    size: 27,
                    color: Color(0xFF27E150),
                  ),
                  Expanded(
                    child: Text(
                      "Near Current Location",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF27E150),
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Row(
                  children: [
                    SvgPicture.asset("assets/svg/home_not.svg"),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      "I don’t want to show my city",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF879099),
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

ContainerCorner inputEdit(String text) {
  return ContainerCorner(
    height: 30,
    borderRadius: 10,
    marginTop: 15,
    color: const Color(0xFFF3F5F9),
    child: Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: TextField(
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF47525C),
                fontSize: 19,
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
                hintStyle: const TextStyle(
                  color: Color(0xFF47525C),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                hintText: text,
              ),
            ),
          )
        ],
      ),
    ),
  );
}

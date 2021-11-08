import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:heyto/ui/button_with_gradient.dart';
import 'package:heyto/ui/container_with_corner.dart';
import 'package:flutter_svg/svg.dart';
import 'package:heyto/views/profile/edit/add_city.dart';
import 'package:heyto/views/profile/edit/add_school.dart';

class EditPage extends StatefulWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  int? _value = 1;
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
          "Edit profile",
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
        child: ListView(
          children: [
            cards(context),
            ButtonWithGradient(
              onTap: () {},
              height: 46,
              borderRadius: 100,
              marginLeft: 20,
              marginRight: 20,
              text: "ADD PHOTOS",
              beginColor: 0xFF27E150,
              endColor: 0xFF00E0AA,
            ),
            title("About Hamd"),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF3F5F9),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    maxLength: 500,
                    minLines: 1,
                    maxLines: 100,
                    style: const TextStyle(
                          color: Color(0xFF47525C),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    keyboardType: TextInputType.multiline,
                    decoration: const InputDecoration(
                      hintText: "About you",
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: Color(0xFF47525C),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            title("Passions"),
            inputEdit("Add Passions"),
            title("Job Title"),
            inputEdit("Add Job Title"),
            title("Company"),
            inputEdit("Add Company"),
            title("School"),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddSchoolPage()));
              },
              child: option("Add School"),
            ),
            title("Living In"),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddCityPage()));
              },
              child: option("Add City"),
            ),
            title("Show my Instagram Photos"),
            ContainerCorner(
              height: 70,
              borderRadius: 10,
              marginTop: 15,
              color: const Color(0xFFF3F5F9),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("assets/svg/insta.svg",
                        color: const Color(0xFF27E150),
                        ),
                        const SizedBox(width: 15),
                        const Text(
                          "Connect Instagram", 
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF27E150),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            title("Gender"),
            Padding(
              padding: const EdgeInsets.only(bottom: 13.0),
              child: ContainerCorner(
                height: 70,
                borderRadius: 10,
                marginTop: 15,
                color: const Color(0xFFF3F5F9),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      genderOptions(1, "Man", _value!),
                      genderOptions(2, "Woman", _value!),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ContainerCorner inputEdit(String text) {
    return ContainerCorner(
      height: 50,
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
                style: const TextStyle(
                  color: Color(0xFF47525C),
                  fontSize: 16,
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

  Row genderOptions(int position, String text, int selected) {
    return Row(
      children: [
        Radio(
          activeColor: const Color(0xFF27E150),
            value: position,
            groupValue: _value,
            onChanged: (int? value) {
              setState(() {
                _value = value;
              });
            }),
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _value = position;
            });
          },
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: selected == position ? const Color(0xFF27E150) : const Color(0xFF47525C),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}

Widget cards(context) {
   List<String> pictures = [
    "assets/images/foto1.png",
    "assets/images/foto2.png",
    "assets/images/foto3.png",
    "",
    "",
    "",
  ];
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
        children: List.generate(6, (index) {
          return ContainerCorner(
            borderRadius: 8,
            height: 145,
            width: (MediaQuery.of(context).size.width / 3) - 20,
            color: const Color(0xFFE6E9F0),
            child: 
            pictures[index] == "" ? 
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: SvgPicture.asset(
                      "assets/svg/profil.svg",
                      color: const Color(0xFFCCD2E3),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 25,
                    height: 25,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF27E150),
                            Color(0xFF00E0AA),
                          ]),
                    ),
                    child: const Center(
                        child: Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
                  ),
                ],
              ),
            ) : 
            Stack(
              children: [
                Container(
                  height: 145,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(pictures[index]),
                      fit: BoxFit.cover,
                  ),
                ),
                ),
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: Center(
                  child: Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                        color: Color(0xFFFA3967),
                      ),
                      child: const Center(
                          child: Text(
                            "X",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      ),
                    ),
                ),
              ],
            ),
          );
        }),
      ),
    ),
  );
}

Padding title(String title) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 10,
      top: 25,
    ),
    child: Text(
      title,
      style: const TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}

ContainerCorner option(String option) {
    return ContainerCorner(
      height: 50,
      borderRadius: 10,
      marginTop: 15,
      color: const Color(0xFFF3F5F9),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              option,
              style: const TextStyle(
                color: Color(0xFF47525C),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
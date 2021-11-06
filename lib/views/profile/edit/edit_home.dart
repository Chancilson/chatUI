import 'package:flutter/material.dart';
import 'package:heyto/ui/button_with_gradient.dart';
import 'package:heyto/ui/container_with_corner.dart';
import 'package:flutter_svg/svg.dart';

class EditPage extends StatefulWidget {
  const EditPage({ Key? key }) : super(key: key);

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
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
            title("Passions"),
            title("Job Title"),
            title("Company"),
            title("School"),
            title("Living In"),
            title("Show my Instagram Photos"),
            title("Gender"),
          ],
        ),
      ),
      
      );
  }
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
            child: Center(
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20,),
                    child: SvgPicture.asset("assets/svg/profil.svg",
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

                    child: const Center(
                      child: Icon(Icons.add, color: Colors.white,)
                    ),

                  ),

                ],
              ),
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
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
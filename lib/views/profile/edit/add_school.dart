import 'package:flutter/material.dart';

class AddSchoolPage extends StatefulWidget {
  const AddSchoolPage({ Key? key }) : super(key: key);

  @override
  _AddSchoolPageState createState() => _AddSchoolPageState();
}

class _AddSchoolPageState extends State<AddSchoolPage> {
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
          "Add School",
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
            
          ]
        ),
      ),
    
    );
  }
}
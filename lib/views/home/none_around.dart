import 'package:flutter/material.dart';

class NoneAround extends StatefulWidget {
  const NoneAround({ Key? key }) : super(key: key);

  @override
  _NoneAroundState createState() => _NoneAroundState();
}

class _NoneAroundState extends State<NoneAround> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100.0,
            height: 100.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage("images/nonearound.png")),
            ),
          ),
          const Padding(
            padding:  EdgeInsets.only(top: 15.0, bottom: 20.0),
            child: Text("There’s no one new around you.", style: TextStyle(color: Color(0xFFB5B9C5,),fontWeight: FontWeight.w500, fontSize: 14,),)
          ),
          const Text("Something went wrong. Please try again later",style: TextStyle(color: Color(0xFFB5B9C5,),fontWeight: FontWeight.w500, fontSize: 14,)),
        ],
      ),
    );
  }
}
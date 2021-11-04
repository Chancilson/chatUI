import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:heyto/ui/button_with_gradient.dart';

class PauseMyAcount extends StatefulWidget {
  const PauseMyAcount({ Key? key }) : super(key: key);

  @override
  _PauseMyAcountState createState() => _PauseMyAcountState();
}

class _PauseMyAcountState extends State<PauseMyAcount> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("Your Card is Hidden",style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 25,)),
          Padding(
            padding:  EdgeInsets.only(top: 20.0, bottom: 25.0, right: 10.0, left: 10.0),
            child: Text("Enable Discovery to meet new people. People you have already liked may still see your profile and match with you. ", style: TextStyle(color: Color(0xFF879099,),fontWeight: FontWeight.w500, fontSize: 14,), textAlign: TextAlign.center)
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: ButtonWithGradient(
              text: "ENABLE DISCOVERY", 
              textColor: Colors.white,
              beginColor: 0xFF27E150,
              endColor: 0xFF00E0AA,
              height: 35,
            ),
          ),
        ],
      ),
    );
  }
}
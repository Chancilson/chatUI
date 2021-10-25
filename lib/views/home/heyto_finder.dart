import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class FindPeopleAround extends StatefulWidget {
  const FindPeopleAround({ Key? key }) : super(key: key);

  @override
  _FindPeopleAroundState createState() => _FindPeopleAroundState();
}

class _FindPeopleAroundState extends State<FindPeopleAround> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: RiveAnimation.asset("assets/animated/heytofind.riv"),
    );
  }
}
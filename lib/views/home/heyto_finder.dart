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

// chatJson[index]['story'] ?
// Container(
//   decoration: BoxDecoration(
//     shape: BoxShape.circle,
//     border: Border.all(color: const Color(0xFFFE08BA), width: 3,),
//   ),
//   child: Padding(
//     padding: const EdgeInsets.all(3.0),
//     child: Container(
//       width: 70,
//       height: 70,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         image: DecorationImage(image: AssetImage(chatJson[index]['img']), fit: BoxFit.cover,),
//       ),
//     ),
//   ),
// ) :
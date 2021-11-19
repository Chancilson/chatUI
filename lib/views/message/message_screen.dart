import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:heyto/constants.dart';

import 'components/body.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: const Body(),
    );
  }

  AppBar buildAppBar(context) {
    return AppBar(
      // isso desativa o botão padrão de voltar
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,  
      elevation: 0,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset("assets/svg/go_back.svg"),
        ),
      title: Row(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("assets/images/foto1.png"),
          ),

          const SizedBox(width: kDefaultPadding * 0.75,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Kristin Whatson", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),),
              Text("Active 3m ago", style: TextStyle(fontSize: 12, color: Color(0xFF00C2FF))),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(onPressed: () {}, icon: SvgPicture.asset("assets/svg/star_active.svg", width: 20, height: 20)),
        IconButton(onPressed: () {}, icon: SvgPicture.asset("assets/svg/chat_config.svg")),

        const SizedBox(width: kDefaultPadding / 2,),
      ],
    );
  }
}
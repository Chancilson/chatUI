import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:heyto/views/home/message_body.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppbar(),
      body: const MessageBody(),
      //bottomSheet: const ChatInputField(),
      );
  }



  AppBar buildAppbar() {
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        //leadingWidth: 15,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset("assets/svg/go_back.svg"),
        ),
        title: Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("assets/images/girls/img_5.jpeg"),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Emma",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16)),
                Text("Online",
                    style: TextStyle(
                        color: Color(0xFF00C2FF),
                        fontWeight: FontWeight.w500,
                        fontSize: 11)),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/svg/star_active.svg",
              width: 17,
              height: 16,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/svg/chat_config.svg"),
          ),
        ],
      );
  }
}

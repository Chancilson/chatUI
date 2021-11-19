import 'package:flutter/material.dart';
import 'package:heyto/components/chat_card.dart';
import 'package:heyto/models/chat.dart';
import 'package:heyto/views/message/message_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
        child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index],
              press:() => Navigator.push(context, MaterialPageRoute(builder: (context) => const MessageScreen())),
            ),
          ),
        ),
      ],
    );
  }
}
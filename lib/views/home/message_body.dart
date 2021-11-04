import 'package:flutter/material.dart';
import 'package:heyto/models/chat_message.dart';
import 'package:heyto/ui/message.dart';

class MessageBody extends StatefulWidget {
  const MessageBody({Key? key}) : super(key: key);

  @override
  State<MessageBody> createState() => _MessageBodyState();
}

class _MessageBodyState extends State<MessageBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        children: List.generate(demeChatMessages.length, (index) {
          return Message(
            message: demeChatMessages[index],
          );
        }),
      ),
    );
  }
}
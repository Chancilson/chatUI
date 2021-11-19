import 'package:flutter/material.dart';
import 'package:heyto/models/chat_message.dart';
import 'package:heyto/views/message/components/audio_message.dart';
import 'package:heyto/views/message/components/status_message.dart';
import 'package:heyto/views/message/components/text_message.dart';

import '../../../constants.dart';

class Message extends StatelessWidget {
  const Message({
    Key? key,
    @required this.message,
  }) : super(key: key);

  final ChatMessage? message;

  @override
  Widget build(BuildContext context) {
    Widget messageContaint(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(
            message: message,
          );
        case ChatMessageType.audio:
          return AudioMessage(message: message);
        default:
          return const SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.only(
        top: kDefaultPadding,
      ),
      child: Row(
        mainAxisAlignment:
            message!.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message!.isSender) ...[
            const CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage("assets/images/foto2.png"),
            ),
            const SizedBox(
              width: kDefaultPadding,
            ),
          ],
          messageContaint(message!),
          if (message!.isSender)
            MessageStatusDot(
              status: message!.messageStatus,
            )
        ],
      ),
    );
  }
}
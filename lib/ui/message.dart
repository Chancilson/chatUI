import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:heyto/models/chat_message.dart';
import 'package:heyto/ui/text_message.dart';

class Message extends StatelessWidget {
  const Message({
    Key? key,
    required this.message,
  }) : super(key: key);
  final ChatMessage? message;

  Widget messageContaint(ChatMessage? message) {
    switch (message!.messageType) {
      case ChatMessageType.text:
        return TextMessage(message: message);
      case ChatMessageType.audio:
        return AudioMessage(message: message);
      default:
        return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          message!.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        if (!message!.isSender) ...{
          const Padding(
            padding: EdgeInsets.only(left: 10.0,),
            child: CircleAvatar(
            radius: 13,
            backgroundImage: AssetImage("assets/images/girls/img_7.jpeg"),
          )
          ),
        },
        messageContaint(message),
      ],
    );
  }
}


class AudioMessage extends StatelessWidget {
  const AudioMessage({ Key? key, this.message }) : super(key: key);
  final ChatMessage? message;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: message!.isSender ? const EdgeInsets.only(right: 10.0) : const EdgeInsets.only(left: 10.0,),
      width: MediaQuery.of(context).size.width * 0.33,
      height: 40,
      padding: const EdgeInsets.symmetric(
        horizontal: 6,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        gradient: message!.isSender ? const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFF29D24E),
              Color(0xFF00CB9A),
            ],
          ) : const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFFF3F5F9),
              Color(0xFFF3F5F9),
            ],
          ),
          borderRadius: message!.isSender ? 
              const  BorderRadius.only(
              bottomLeft: Radius.circular(10),
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10)) : 

              const  BorderRadius.only(
              bottomRight: Radius.circular(10),
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10)),
      ),
      child: Row(
        children: [
          Icon(Icons.play_circle_fill_rounded,
            color: message!.isSender ? Colors.white : Colors.black,
          ),
          Expanded(
            child: SvgPicture.asset(
              "assets/svg/audio_wave.svg",
              color: message!.isSender ? Colors.white.withOpacity(0.6) : const Color(0xFFA1A3A8),
              width: 100,
              height: 30,
              ),
          ),
        ],
      ),
      
    );
  }
}
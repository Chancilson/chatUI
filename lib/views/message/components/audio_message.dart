import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:heyto/models/chat_message.dart';

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
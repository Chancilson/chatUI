import 'package:flutter/material.dart';
import 'package:heyto/models/chat_message.dart';

class TextMessage extends StatelessWidget {
  final ChatMessage? message;
  const TextMessage({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
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
        child: Text(
          message!.text,
          style: TextStyle(color: message!.isSender ?  Colors.white : Colors.black),
        ));
  }
}
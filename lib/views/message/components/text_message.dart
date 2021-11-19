import 'package:flutter/material.dart';
import 'package:heyto/models/chat_message.dart';

//import '../../../constants.dart';

/*class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key,
    this.message,
  }) : super(key: key);

  final ChatMessage? message;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding * 0.75,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(message!.isSender ? 1 : 0.1),
        borderRadius: BorderRadius.circular(30),
      ),
      child:Text(
        message!.text,
        style: TextStyle(
          color: message!.isSender ? Colors.white : Theme.of(context).textTheme.bodyText1!.color,
        ),
      ),
    );
  }
}*/

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
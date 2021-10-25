import 'package:flutter/material.dart';

class MessageBody extends StatefulWidget {
  const MessageBody({ Key? key }) : super(key: key);

  @override
  _MessageBodyState createState() => _MessageBodyState();
}

class _MessageBodyState extends State<MessageBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
          child:const SafeArea(
            child: Text("data"),
          ),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:heyto/data/chats_json.dart';

class EmptyChat extends StatefulWidget {
  const EmptyChat({Key? key}) : super(key: key);

  @override
  _EmptyChatState createState() => _EmptyChatState();
}

class _EmptyChatState extends State<EmptyChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(
      children: [
        Row(
          children: const [
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                "New Matches",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: List.generate(chatJson.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(0.8),
                            width: 70,
                            height: 70,
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: const Color(0xFFE6E9F0), width: 1,),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
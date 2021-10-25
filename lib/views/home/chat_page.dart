import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:heyto/data/chats_json.dart';
import 'package:heyto/views/home/message_screen.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
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
                          chatFriends(chatJson[index]['img'], false),
                          const SizedBox(height: 10),
                          SizedBox(
                              width: 70,
                              child: Align(
                                  child: Text(
                                chatJson[index]['name'],
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600),
                              ))),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                children: List.generate(userMessages.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)  => const MessageScreen()));
                      },
                      child: Row(
                        children: [
                          chatFriends(userMessages[index]['img'],
                              userMessages[index]['online']),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  userMessages[index]['name'],
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  userMessages[index]['message'],
                                  style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFB7B9B8)),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          userMessages[index]['validated'] != ""
                              ? SizedBox(
                                  width: 15,
                                  height: 15,
                                  child: SvgPicture.asset(
                                      userMessages[index]['validated']))
                              : const Text(""),
                          Text(
                            userMessages[index]['created_at'],
                            style: const TextStyle(
                                fontSize: 11,
                                color: Color(0xFFB7B9B8),
                                fontWeight: FontWeight.w600),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ],
    );
  }
}

Widget chatFriends(String image, bool online) {
  return Container(
    padding: const EdgeInsets.all(0.8),
    width: 70,
    height: 70,
    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color(0xFFE6E9F0),
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(0.3),
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        online
            ? Positioned(
                top: 48,
                left: 48,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    shape: BoxShape.circle,
                    color: const Color(0xFF00C2FF),
                  ),
                ))
            : const Text(""),
      ],
    ),
  );
}

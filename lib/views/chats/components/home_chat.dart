import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:heyto/data/chats_json.dart';
import 'package:heyto/views/message/message_screen.dart';

import '../../../constants.dart';

class HomeChat extends StatelessWidget {
  const HomeChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: const [
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(left: 10.0, top: kDefaultPadding),
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
            //Horizontal chats
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

            //Vertical friends
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                children: List.generate(userMessages.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MessageScreen()));
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
                                Row(
                                  children: [
                                    Text(
                                      userMessages[index]['name'],
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                      overflow: TextOverflow.ellipsis,
                                    ),

                                  const SizedBox(width: 5),


                                    userMessages[index]['validated'] != ""
                                    ? SizedBox(
                                        width: 15,
                                        height: 15,
                                        child: SvgPicture.asset(
                                            userMessages[index]['validated']))
                                    : const Text(""),
                                  ],
                                ),
                                
                                const SizedBox(height: 10),
                                
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    userMessages[index]['sent'] ? SvgPicture.asset("assets/svg/sent.svg") : const SizedBox(),
                                    const SizedBox(width: 10),
                                    Text(
                                      userMessages[index]['message'],
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: userMessages[index]['read'] ? const Color(0xFF47525C) : const Color(0xFFB7B9B8)
                                        ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Column(
                              children: [

                              Text(
                                userMessages[index]['created_at'],
                                style: const TextStyle(
                                    fontSize: 11,
                                    color: Color(0xFFB7B9B8),
                                    fontWeight: FontWeight.w600),
                                overflow: TextOverflow.ellipsis,
                              ),

                              const SizedBox(height: 10),
                              
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,

                                children: [

                                  userMessages[index]['read'] ?
                                  Container(
                                    alignment: Alignment.center,
                                    height: 17,
                                    width: 17,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF27E150),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Text(userMessages[index]['messages'], style: const TextStyle(color: Colors.white, fontSize: 11.0,)),
                                  ) : const Text(""),

                                  const SizedBox(width: 10),

                                  userMessages[index]['favorite'] ?
                                  SvgPicture.asset("assets/svg/star_active.svg") : const Text(""),
                                  
                                ],
                              ),
                                
                              ],
                            ),
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
                  width: 17,
                  height: 17,
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

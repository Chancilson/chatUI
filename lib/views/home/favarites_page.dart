import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:heyto/data/likes_json.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return ListView(
      padding: const EdgeInsets.only(bottom: 100),
      children: [
        Row(
          children: const [
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                "12 Likes",
                style: TextStyle(
                  color: Color(0xFF879099),
                  fontSize: 14.0,
                ),
              ),
            )),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left:5.0, right: 5),
          child: Wrap(
            spacing: 5,
            runSpacing: 5,
              children: List.generate(
            likesJson.length,
            (index) {
              return Container(
                padding: const EdgeInsets.all(0.8),
                width: (size.width - 15) / 2,
                height: 250,
                child: Stack(
                  children: [
                    Container(
                      width: (size.width - 15) / 2,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image: AssetImage(likesJson[index]['img']), fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      width: (size.width - 15) / 2,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [Colors.black.withOpacity(0.25), Colors.black.withOpacity(0)]
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          likesJson[index]['active'] ?
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF00C2FF),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                const SizedBox( width: 5,),
                                Text(likesJson[index]['name'], style: const TextStyle(fontSize: 14.0, color: Colors.white,)),
                              ]
                            ),
                          ) : 
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const SizedBox( width: 5,),
                                Text(likesJson[index]['name'], style: const TextStyle(fontSize: 14.0, color: Colors.white,)),
                              ]
                            ),
                          )
                        ],
                      ) ,
                    )
                  ],
                ),
              );
            }),
          ),
        )
      ],
    );
  }
}

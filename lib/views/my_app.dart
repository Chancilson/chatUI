import 'package:flutter/material.dart';
import 'package:heyto/views/home/home.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const home = "/";
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        home: (context) => const HomePage(),
      },
    );
  }
}

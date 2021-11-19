import 'package:flutter/material.dart';
class TiketAds extends StatefulWidget {
  const TiketAds({ Key? key }) : super(key: key);

  @override
  _TiketAdsState createState() => _TiketAdsState();
}

class _TiketAdsState extends State<TiketAds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
          height: 300,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/foto1.png"),
            ),
          ),
          child: BackButton(
          color: Colors.grey,
        ),
        ),]
      ),
    );
  }
}
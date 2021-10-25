import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:heyto/widget/component.dart';
import 'package:heyto/views/home/none_around.dart';
//import 'package:heyto/views/home/pause_account.dart';
//import 'package:heyto/views/home/heyto_finder.dart';
import 'package:heyto/views/home/favarites_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const NoneAround(),
    const FavoritesPage(),
    const Text("This is Chat Page"),
    const Text("This is your friend list"),
  ];
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    String _home = _selectedIndex == 0 ? "assets/svg/home_active.svg" : "assets/svg/home.svg";
    String _favorite = _selectedIndex == 1 ? "assets/svg/favorite_active.svg" : "assets/svg/favorite.svg";
    String _chat = _selectedIndex == 2 ? "assets/svg/chat_active.svg" : "assets/svg/chat.svg";
    String _profil = _selectedIndex == 3 ? "assets/svg/profil_active.svg" : "assets/svg/profil.svg";
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Container(
          width: 100,
          height: 30,
          margin: const EdgeInsets.only(top: 12),
          alignment: Alignment.topCenter,
          child: Image.asset("assets/images/logo.png"),
        ),
        leading: IconButton(onPressed: () {}, icon: SvgPicture.asset("assets/svg/left.svg")),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white70,
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/svg/config.svg")),
        ],
      ),
      body: Center(
        child: Container(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Component.buildNavIcon(
              SvgPicture.asset(_home,),
                0,
                false, context),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Component.buildNavIcon(
                SvgPicture.asset(_favorite,),
                1,
                true,context,
                badge: 12),
            label: "favorites",
          ),
          BottomNavigationBarItem(
            icon: Component.buildNavIcon(
                SvgPicture.asset(_chat,),
                2,
                true,context,
                color: 0xFF27E150,
                badge: 15),
            label: "chat",
          ),
          BottomNavigationBarItem(
            icon: Component.buildNavIcon(
                SvgPicture.asset(_profil,),
                3,
                false, context),
            label: "profil",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) => _onItemTap(index),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 40.0,
      ),
    );
  }
}

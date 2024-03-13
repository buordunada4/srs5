import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kamilla/constants/color.dart';
import 'package:kamilla/pages/first_page.dart';
import 'package:kamilla/pages/second_page.dart';
import 'package:kamilla/pages/third_page.dart';
import 'package:kamilla/pages/zero_page.dart';

class BottomBarPage extends StatefulWidget {
  const BottomBarPage({Key? key}) : super(key: key);

  @override
  _BottomBarPageState createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    ZeroPage(),
    SecondPage(),
    ThirdPage(),
    FirstPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightPink,
      appBar: AppBar(
        title: Text(
          "Фоточки",
          style: TextStyle(
            color: AppColors.fontBold,
            fontSize: 24,
            fontWeight: FontWeight.w200,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Work',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: 'Apps',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: AppColors.icons,
        backgroundColor: Color.fromARGB(255, 161, 229, 142),
        onTap: _onItemTapped,
      ),
    );
  }
}

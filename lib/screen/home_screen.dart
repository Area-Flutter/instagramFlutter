import 'package:flutter/material.dart';
import 'package:instagram_app/screen/screens.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 2;
  void _navigateButtomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    UserReels(),
    UserShop(),
    UserAccount()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateButtomNavBar,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.black), label: ''),
            const BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.black), label: ''),
            const BottomNavigationBarItem(
                icon: Icon(Icons.video_call, color: Colors.black), label: ''),
            const BottomNavigationBarItem(
                icon: Icon(Icons.shop, color: Colors.black), label: ''),
            const BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.black), label: ''),
          ]),
    );
  }
}

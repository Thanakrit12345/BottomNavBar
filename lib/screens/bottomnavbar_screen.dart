import 'package:flutter/material.dart';
import 'package:widgets_basic/pages/user_page.dart';
import 'package:widgets_basic/screens/Reels_screen.dart';
import 'package:widgets_basic/screens/account_screen.dart';
import 'package:widgets_basic/screens/home_screen.dart';
import 'package:widgets_basic/screens/search_screen.dart';
import 'package:widgets_basic/screens/shop_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _navigatorBottomNavBar(int index ) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    HomeScreen(),
    SearchScreen(),
    ReelsScreen(),
    ShopScreen(),
    AccountScreen()
    
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigatorBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call),label: 'Reels'),
          BottomNavigationBarItem(icon: Icon(Icons.shop),label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account'),
        ],
      )
    );
  }
}
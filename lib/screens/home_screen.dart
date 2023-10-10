import 'package:flutter/material.dart';
import 'package:widgets_basic/constant/my_constant.dart';
import 'package:widgets_basic/screens/Reels_screen.dart';
import 'package:widgets_basic/screens/account_screen.dart';
import 'package:widgets_basic/screens/search_screen.dart';
import 'package:widgets_basic/screens/shop_screen.dart';
import 'bottomnavbar_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 243, 33, 180),
        title: Text(
          'Flutter First My App.',
          style: MyConstant().h1Style(),
        ),
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 24,
        ),
        actions: const [
          Icon(Icons.search, color: Colors.white, size: 24,),
          SizedBox(width: 18,),
          Icon(Icons.add, color: Colors.white, size: 24,),
          SizedBox(width: 18,),
          Icon(Icons.person, color: Colors.white, size: 24,),
          SizedBox(width: 20,),
        ],
      ),
        body: const Center(
          child: Text(
            'HOME SCREEN',
        style: TextStyle(
          color: Colors.black,
          fontSize: 40,
          fontWeight: FontWeight.w700,
          ) 
        ),
      ),
    bottomNavigationBar: const AccountScreen(),
    );    
  }
}
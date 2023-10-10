import 'package:flutter/material.dart';
import 'package:widgets_basic/constant/my_constant.dart';
import 'bottomnavbar_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
            'SEARCH SCREEN',
        style: TextStyle(
          color: Colors.black,
          fontSize: 40,
          fontWeight: FontWeight.w700,
          ) 
        ),
      ),
    bottomNavigationBar: const BottomNavBar(),
    );    
  }
}
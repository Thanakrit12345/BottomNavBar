import 'package:flutter/material.dart';

class MyConstant {

  static Color primary = Color.fromARGB(255, 236, 236, 236);
  static Color succes = const Color.fromARGB(255, 40, 181, 15);
  static Color warning = const Color.fromARGB(255, 246, 255, 0);
  static Color danger = const Color.fromARGB(255, 251, 3, 3);
  static Color info = const Color.fromARGB(255, 98, 95, 255);

  TextStyle h1Style() {
    return const TextStyle(
      fontFamily: 'Raleway',
      fontSize: 28,
      color: Colors.white,
      fontWeight: FontWeight.bold
    );
  }
  TextStyle h2Style() {
    return TextStyle(
      fontFamily: 'Raleway',
      fontSize: 18,
      color: primary,
      fontWeight: FontWeight.bold
    );
  }

}
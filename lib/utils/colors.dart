import 'package:flutter/material.dart';

class CustomColors {
  static const white = Colors.white;
  static const black = Colors.black;
  static const bgColor = Color.fromARGB(255, 243, 243, 243);
  static const orange = Color.fromARGB(255, 250, 170, 20);
  static const yellow = Color.fromRGBO(250, 170, 20, 1);
  static const red = Colors.red;
  static const red2 = Color.fromARGB(255, 255, 98, 98);
  static const orangeShade = Color.fromARGB(68, 241, 189, 106);
  static const purple = Color.fromRGBO(148, 159, 255, 0.927);
  static const purple2 = Color.fromARGB(255, 148, 159, 255);
  static const grey = Colors.grey;
  static const lightGrey = Color.fromARGB(100, 196, 196, 196);
  static const cardClr = Color.fromARGB(255, 243, 243, 243);
  static const checkOrange = Color.fromRGBO(238, 125, 66, 1);

  static const orangeGradient = LinearGradient(
    colors: [Color.fromRGBO(250, 170, 20, 1), Color.fromRGBO(255, 215, 141, 1)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static Shader linearGradient = const LinearGradient(
    colors: [
      Color.fromRGBO(250, 166, 119, 1.0),
      Color.fromRGBO(250, 166, 119, 0.47),
    ],
  ).createShader(const Rect.fromLTWH(0.0, 0.0, 50.0, 50.0));

  static const btnColor = [
    Color.fromRGBO(238, 125, 66, 1),
    Color.fromRGBO(255, 200, 171, 1),
  ];
}

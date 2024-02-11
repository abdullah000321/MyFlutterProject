import 'package:flutter/material.dart';

import 'FirstScreen.dart';
import 'HomeScreen.dart';
import 'LoginScreen.dart';
import 'SecondScreen.dart';
import 'SplashScreen.dart';
void main() {
  return runApp(MaterialApp(
    title: 'CookShare',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: MaterialColor(
        0xFF11113D,
        <int, Color>{
          50: Color(0xFFE1E1FF),
          100: Color(0xFFB5B5FF),
          200: Color(0xFF8888FF),
          300: Color(0xFF5B5BFF),
          400: Color(0xFF2E2EFF),
          500: Color(0xFF11113D), // primary color
          600: Color(0xFF00000F),
          700: Color(0xFF00000F),
          800: Color(0xFF00000F),
          900: Color(0xFF00000F),
        },
      ),
      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,fontFamily:'PlayfairDisplay'),
        subtitle1: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),

      )
    ),
    home:LoginScreen(),
  ));
}


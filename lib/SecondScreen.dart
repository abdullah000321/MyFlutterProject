import 'package:flutter/material.dart';

import 'widget/app_buttons.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
        ),
        Positioned.fill(
          child: Image.asset(
            'assets/images/bgpng.png',
            fit: BoxFit.cover,
          ),
        ),
        Column(
          children: [
            Center(
              child: Image.asset(
                'assets/images/secondScreen.png',
                height: 450,
                width: 250,
              ),
            ),
            Text(
              'Welcome!',
              style: Theme.of(context).textTheme.headline1!.copyWith(color: Color(0xFF11113D)),
            ),
            SizedBox(height: 20,),
            Text(
              'Come Join us now create an account and sign in',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Color(0xFF11113D)),
            ),
            SizedBox(height: 20,),
            AppButtons(
              textColor: Colors.black, 
              borderColor: Color(0xFFB72656), 
              text: "Sign up", 
              hSize: 55,
              wSize: 300,
              ),
            SizedBox(height: 20,),
            AppButtons(
              textColor: Colors.white, 
              gradientColor: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xFFB72656),
                  Color(0xFFDEA755),
                ],
              ),
              borderColor: Colors.transparent, 
              text: "Sign in", 
              hSize: 55,
              wSize: 300,
              ),
          ],
        ),
      ],
    ),
  );
  }
}
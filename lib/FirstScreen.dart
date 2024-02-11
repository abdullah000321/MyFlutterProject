import 'package:flutter/material.dart';
import 'package:myapp/widget/app_buttons.dart';

import 'LoginScreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
   @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  navigateToHome() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }
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
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            'assets/images/vector1.png',
            height: 250,
            width: 250,
          ),
        ),
        SizedBox(height: 20), 
        Text(
          'Delicious Food Recipe',
          style: Theme.of(context).textTheme.headline1!.copyWith(color:Color(0xFF11113D)),
        ),
        SizedBox(height: 10), 
        Padding(
          padding: const EdgeInsets.only(left: 50,right: 50),
          child: Text(
            'Malai Boti Tikka | Chicken Tikka Cheese Burger | Burritos | Wonton',
            style: Theme.of(context).textTheme.subtitle1!.copyWith(color:Color(0xFF11113D)),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 20), 
        AppButtons(
        textColor: Colors.white, 
        // backgroundColor: Colors.white,
        gradientColor: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFFB72656),
            Color(0xFFDEA755),
          ],
        ),
        borderColor: Colors.transparent, 
        text: "Let’s go", 
        hSize: 55,
        wSize: 55,
        isIcon: true,
        icon: Icons.arrow_right,
        )
      ],
    ),
  ],
),

  );
  }
}
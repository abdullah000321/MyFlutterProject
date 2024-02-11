import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Text("Flutter Ui Design",
      style: TextStyle(fontStyle: FontStyle.italic,
      letterSpacing: 2,
      fontSize: 20
      ),
      ),backgroundColor: Colors.amber,centerTitle: true,
     ),
     body:SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
      Container(
        height: 500,
        width: double.infinity,
        color: Colors.yellow[100],
        child: Image.asset(
          "assets/images/bg.jpg",
          fit: BoxFit.cover,
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:Row(children: [
        Container(
        height: 300,
        width: 300,
        color: Colors.yellow[300],
        margin: EdgeInsets.all(10),
      ),
        Container(
        height: 300,
        width: 300,
        color: Colors.yellow[300],
        margin: EdgeInsets.all(10),
        child: Center(child: Text(
          "Hello world",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),),
      ),
        Container(
        height: 300,
        width: 300,
        color: Colors.yellow[300],
        margin: EdgeInsets.all(10),
      ),
      ],)
      )
     ]),
     )
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() =>  _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String text = "hello there";
  Random random = Random();
  Color color =  Color(0xFFFFFFFF);

  void _changeColor() {
    setState(() {

      color = Color.fromARGB(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureDetector(
        onTap: _changeColor,
        child: Container(
          decoration: BoxDecoration(
              color: color
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(fontSize: 24, decoration: TextDecoration.none),
            ),
          ),
        ),
      ),
    );
  }
}

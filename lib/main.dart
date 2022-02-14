import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[400],
        appBar: AppBar(
          title: const Text('Ask Me Anything'),
          backgroundColor: Colors.blue[800],
        ),
        body: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentImageNumber = 1;
  final dynamic listOfImages = [
    'ball1.png',
    'ball2.png',
    'ball3.png',
    'ball4.png',
    'ball5.png',
  ];
  void changeBallFace() {
    setState(() {
      currentImageNumber = Random().nextInt(listOfImages.length) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Image.asset('images/ball$currentImageNumber.png'),
        onPressed: () => changeBallFace(),
      ),
    );
  }
}

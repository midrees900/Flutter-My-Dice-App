import 'package:flutter/material.dart';
import 'dart:math';

main() {
  runApp(MyDiceApp());
}

class MyDiceApp extends StatelessWidget {
  //const MyDiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(),
        body: StFullMyDiceApp(),
      ),
    );
  }
}

class StFullMyDiceApp extends StatefulWidget {
  //const StFullMyDiceApp({Key? key}) : super(key: key);

  @override
  State<StFullMyDiceApp> createState() => _StFullMyDiceAppState();
}

class _StFullMyDiceAppState extends State<StFullMyDiceApp> {
  int num = 5;
  int num2 = 5;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$num.png'),
              onPressed: () {
                setState(() {
                  num = Random().nextInt(6) + 1;
                });
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$num2.png'),
              onPressed: () {
                setState(() {
                  num2 = Random().nextInt(6) + 1;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(centerTitle: true,
        title: const Text('Dicee App', style: TextStyle(
          color: Colors.amber,),
        ),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.teal,
      body: diceApp(),
    ),
  ),);
}
  class diceApp extends StatefulWidget {
  const diceApp({super.key});

  @override
  State<diceApp> createState() => _diceAppState();
}
 class _diceAppState extends State<diceApp> {
   int  LeftDiceNumber = 1;
   int  RightDiceNumber = 1;
  void change()
  {
    setState(() {
      LeftDiceNumber=Random().nextInt(6)+1;
      RightDiceNumber=Random().nextInt(6)+1;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child: ElevatedButton(
            onPressed: () {
              change();
                },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
            child: Image.asset('images/dice$LeftDiceNumber.png'),
          ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                change();
                },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
              child: Image.asset('images/dice$RightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}





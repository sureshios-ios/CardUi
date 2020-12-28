import 'package:flutter/material.dart';
import 'package:uilearn/card.dart';
import 'package:uilearn/cardui.dart';
import 'package:uilearn/left.dart';
import 'package:uilearn/leftbottom.dart';
import 'package:uilearn/right.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  void Shirt = [
    'Men\'s Lil Sleeve',
    'Women\'s Leggins',
    'Men\'s Lil Sleeve',
    'Women\'s Leggins'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: CardUi()
    );
  }
}
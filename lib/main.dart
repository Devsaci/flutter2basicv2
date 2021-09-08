import 'package:flutter/material.dart';
import 'package:flutter2basicv2/myHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '16. TextField Part 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '16. TextField Part 1'),
    );
  }
}




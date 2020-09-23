import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: (Colors.green)),
      home: Home(),
    );
  }
}



import 'package:flutter/material.dart';
import './views/Dashbord.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dynamic Model',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Dashbord(),
    );
  }
}

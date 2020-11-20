import 'package:flutter/material.dart';
import 'UI/uis.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CRUD API",
      debugShowCheckedModeBanner: false,
      home: Post(),
    );
  }
}
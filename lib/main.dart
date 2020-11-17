import 'package:flutter/material.dart';
import 'package:project_test/ui/ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Project",
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

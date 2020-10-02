import 'package:flutter/material.dart';
import 'pages/HomePage.dart';

void main() {
  runApp(HealthApp());
}

class HealthApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme : ThemeData(scaffoldBackgroundColor: Colors.grey[200]),
      title: 'HealthApp',
      home: HomePage(),
    );
  }
}

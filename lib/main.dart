import 'package:flutter/material.dart';
import 'package:sampleflutterapp/main3.dart';
import 'package:sampleflutterapp/screens/splash.dart';

void main() {
  runApp(myApp());
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'login sample',
      theme:ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      home: screensplash(),
    );
  }
}
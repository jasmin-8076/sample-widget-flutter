import 'package:flutter/material.dart';
import 'package:sampleflutterapp/screens/splash.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(myapp());
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
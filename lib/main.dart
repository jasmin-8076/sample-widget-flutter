
import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color.fromARGB(255, 33, 11, 71)),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  String name = 'heading';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 50, 41),
      appBar: AppBar(),
      body: SafeArea(
          child: Column(children: [
        Text(
          name,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.normal),
        ),
        TextButton(
          onPressed: () {
            print('textbutton clicked');
          },
          child: const Text('click me'),
        ),
      ])),
    );
  }
}

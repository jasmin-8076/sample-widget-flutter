import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color.fromARGB(202, 9, 1, 23)),
      home: screenhome(),
    );
  }
}

class screenhome extends StatefulWidget {
  screenhome({super.key});

  @override
  State<screenhome> createState() => _screenhomeState();
}

class _screenhomeState extends State<screenhome> {
  final _textController = TextEditingController();

  String _displayText = 'text will be displayed here';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          color: Color.fromARGB(255, 218, 173, 170),
          child: Column(
            children: [
              TextField(
                controller: _textController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Type something',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Get Data
                  print(_textController.text);
                  setState(() {
                    _displayText = _textController.text;
                  });
                  _displayText = _textController.text;
                },
                child: Text('click here'),
              ),
              Text(_displayText),
            ],
          ),
        ),
      ),
    ));
  }
}

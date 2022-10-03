import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
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

  String name = 'my App';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 40, 50, 41),
        appBar: AppBar(),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.blueGrey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {
                              print('textbutton clicked');
                            },
                            child: const Text('welcome'),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.mic),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          print('elevated button clicked');
                        },
                        child: const Text('click me'),
                      )
                    ]),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.lime,
                  borderRadius: BorderRadius.circular(90),
                  border: Border.all(color: Colors.black, width: 5),
                ),
                child: Center(child: Text('have a nice day')),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {
                            print('textbutton clicked');
                          },
                          child: const Text('welcome'),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.mic),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print('elevated button clicked');
                      },
                      child: const Text('click me'),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        ),
        );
  }
}

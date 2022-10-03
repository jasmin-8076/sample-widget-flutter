import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sampleflutterapp/main4.dart';
import 'package:sampleflutterapp/spscreen1.dart';
import 'package:sampleflutterapp/spscreen2.dart';
import 'package:shared_preferences/shared_preferences.dart';

main() async {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    getsaveddata(context);
    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 123, 176, 125),
      ),
      home: screen1(),
      // routes: {
      //   'screen1': (ctx) {
      //     return screen1();
      //   },
      //   'screen2': (ctx) {
      //     return screen2();
      //   }
    );
  }
}

Future<void> getsaveddata(BuildContext context) async {
  final SharedPreferances = await SharedPreferences.getInstance();
  final savedvalue = SharedPreferances.getString('saved value');

  if (savedvalue! == null) ;
  {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: ((context) => screen2())));
  }
}

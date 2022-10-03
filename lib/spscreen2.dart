import 'package:flutter/material.dart';

class screen2 extends StatelessWidget {
  

  const screen2({super.key, });
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text(name),),
      body: SafeArea(
        child: Column(
          children: [
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.of(context).pop();
            //   },
            //   child: Text('back'),
            Text('value found'),
          ],
        ),
      ),
    );
  }
}

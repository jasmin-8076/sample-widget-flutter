import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class screensplash extends StatelessWidget {
  const screensplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: Image.asset('lib/assets/images/IMG_6405.HEIC'),),
    );
  }
}
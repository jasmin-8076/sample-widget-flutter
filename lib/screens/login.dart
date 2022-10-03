import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class screenlogin extends StatelessWidget {
  screenlogin({super.key});

  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextFormField(
              controller: usernamecontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'username'),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: passwordcontroller,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'enter your password',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: (() {
                checklogin(context);
              }),
              icon: Icon(Icons.check),
              label: Text('login'),
            ),
          ],
        ),
      ),
    ));
  }

  void checklogin(BuildContext ctx) {
    final username = usernamecontroller.text;
    final password = passwordcontroller.text;
    if (username == password) {
      // go to home
 
    } else {
      
    
      // snackbar
      ScaffoldMessenger.of(ctx).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Color.fromARGB(255, 173, 33, 23),
          margin: EdgeInsets.all(10),
          content: Text('username and password does not match'),
        ),
      );

      // alert dialog

      // show text
    }
  }
}

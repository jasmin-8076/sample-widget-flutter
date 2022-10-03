import 'package:flutter/material.dart';
import 'package:sampleflutterapp/spscreen2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class screen1 extends StatelessWidget {
  screen1({super.key});
  final textcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('welcome')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              TextFormField(
                controller: textcontroller,
              ),
              ElevatedButton(
                onPressed: () {
                  savedatatostorgae();
                },
                child: Text('save value'),
              )
            ],
          ),
        ),
        // /

        //     itemBuilder: (ctx, index) {
        //       return ListTile(
        //         title: Text('person $index'),
        //         onTap: () {
        //           Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
        //             return screen2(name: 'person $index');
        //           }));
        //         },
        //       );
        //     },
        //     separatorBuilder: (ctx, index) {
        //       return Divider();
        //     },
        //     itemCount: 30),
      ),
      // Column(
      //   children: [
      //     Text('screen 1'),
      //     ElevatedButton(
      //       onPressed: () {
      //         // Navigator.of(context).push(
      //         //   MaterialPageRoute(
      //         //     builder: (ctx) {
      //         //   return screen2();
      //         // }));

      //         Navigator.of(context).pushNamed('screen2');
      //       },
      //       child: Text('go to screen 2'),
      //     ),
      //   ],
      // ),
    );
  }

  Future<void> savedatatostorgae() async {
    print(textcontroller.text);
// shared preferance
    final sharedpreferances = await SharedPreferences.getInstance();
    // save value
   await sharedpreferances.setString('saved value', textcontroller.text);
  }
}

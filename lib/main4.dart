import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Color.fromARGB(255, 131, 119, 172)),
        home: listviewsample());
  }
}

class listviewsample extends StatelessWidget {
  const listviewsample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('list view sample project'),
      ),
      body: SafeArea(
        child: ListView.separated(
            itemBuilder: (ctx, index) {
              return ListTile(
                title: Text('person $index'),
                subtitle: Text('message $index'),

                leading: CircleAvatar(
                  radius: 40,
                  backgroundColor:Colors.black ,
                  backgroundImage: AssetImage('lib/assets/images/IMG_6405.HEIC')
    ,),
                  trailing: Text('$index:00 pm'),
                
              );
            },
            separatorBuilder: (ctx, index) {
              return Divider();
            },
            itemCount: 20),
      ),
    );
  }
}

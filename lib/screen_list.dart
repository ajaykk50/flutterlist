import 'package:flutter/material.dart';

class ScreenList extends StatelessWidget {
  const ScreenList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (ctx, index) {
            return ListTile(
              title: Text('Person $index'),
              subtitle: Text('message $index'),
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.green,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
              trailing: Text('time $index'),
            );
          },
          separatorBuilder: (ctx, index) {
            return Divider();
          },
          itemCount: 50),
    );
  }
}

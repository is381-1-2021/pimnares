import 'package:flutter/material.dart';

import 'contentFull.dart';
import 'firstAidFull.dart';

class Homepage extends StatefulWidget {
  @override
  createState() => HomepageState();
}

class HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cat What'),
      ),
      body: BodyLayout(),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  return ListView(
    children: ListTile.divideTiles(context: context, tiles: [
      ListTile(
        title: Text('Home Page'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Homepage()));
        },
      ),
      ListTile(
        title: Text('First Aid'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FirstAidFull()));
        },
      ),
      ListTile(
        title: Text('Content'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => contentFull()));
        },
      ),
    ]).toList(),
  );
}

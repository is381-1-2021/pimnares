import 'package:flutter/material.dart';

import 'firstAidlist/bitten.dart';
import 'firstAidlist/bloodStoping.dart';
import 'firstAidlist/brokenBone.dart';
import 'firstAidlist/bugbite.dart';
import 'firstAidlist/chocking.dart';
import 'firstAidlist/poisoning.dart';
import 'firstAidlist/seizures.dart';
import 'firstAidlist/shock.dart';
import 'firstAidlist/water.dart';

class FirstAidFull extends StatefulWidget {
  @override
  _FirstAidFullState createState() => _FirstAidFullState();
}

class _FirstAidFullState extends State<FirstAidFull> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'แมวถูกกัด',
      'ถูกสารพิษ',
      'สิ่งของติดคอ',
      'อาการชัก',
      'อาการช็อค',
      'ถูกแมลงสัตว์กัดต่อย',
      'การห้ามเลือด',
      'กระดูกหัก',
      'ตกน้ำ',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('First Aid', style: (TextStyle(color: Colors.white))),
        backgroundColor: Colors.deepOrange.shade200,

      ),
      body: firstAidBody(),
      bottomNavigationBar: MyBottomNavBar(
        index: index,
        callback: (newIndex) => setState(
          () => this.index = newIndex,
        ),
      ),
    );
  }
}

class firstAidBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _firstAidBody(context);
  }
}

Widget _firstAidBody(BuildContext context) {
  return ListView(
    children: ListTile.divideTiles(
      context: context,
      tiles: [
        ListTile(
          title: Text('แมวถูกกัด'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const bitten()));
          },
        ),
        ListTile(
          title: Text('ถูกสารพิษ'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const poison()));
          },
        ),
        ListTile(
          title: Text('สิ่งของติดคอ'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const choke()));
          },
        ),
        ListTile(
          title: Text('อาการชัก'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const seizures()));
          },
        ),
        ListTile(
          title: Text('อาการช็อค'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const shock()));
          },
        ),
        ListTile(
          title: Text('ถูกแมลงสัตว์กัดต่อย'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const bugbite()));
          },
        ),
        ListTile(
          title: Text('การห้ามเลือด'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const blood()));
          },
        ),
        ListTile(
          title: Text('กระดูกหัก'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const bone()));
          },
        ),
        ListTile(
          title: Text('ตกน้ำ'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const water()));
          },
        ),
      ],
    ).toList(),
  );
}

class MyBottomNavBar extends StatelessWidget {
  MyBottomNavBar({required this.index, required this.callback});

  final int index;
  final Function(int) callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: const EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: Colors.deepOrange.shade200,
        ),
        child: Icon(Icons.home, color: Colors.white,)
      ),
    );
  }
}

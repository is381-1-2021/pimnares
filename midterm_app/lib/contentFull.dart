import 'package:cat_what/createContent.dart';
import 'package:flutter/material.dart';

import 'contentlist/17things.dart';
import 'contentlist/close.dart';
import 'contentlist/healty.dart';

class contentFull extends StatefulWidget {
  @override
  _contentFullState createState() => _contentFullState();
}

class _contentFullState extends State<contentFull> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      '17 เรื่องลับๆของน้องแมว',
      'ทำไมเราถึงควรเลี้ยงน้องแมวระบบปิด',
      '4 พฤติกรรมที่บอกว่าน้องแมวสุขภาพดี',
    ];
    final List<int> colorCodes = <int>[100];

    return Scaffold(
      appBar: AppBar(
        title: Text('Content'),
      ),
      body: contentBody(),
      bottomNavigationBar: MyBottomNavBar(
        index: index,
        callback: (newIndex) => setState(
          () => this.index = newIndex,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
      onPressed: (){
        Navigator.push(
          context, 
          MaterialPageRoute(
          builder: (context) => createContent(),
          ),
        );
      }, 
      backgroundColor: Colors.orangeAccent.shade200,
      label: Text('',),
      icon: Icon(Icons.add),
    )
    );
  }
}

class contentBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _contentBody(context);
  }
}

Widget _contentBody(BuildContext context) {
  return ListView(
    children: ListTile.divideTiles(
      context: context,
      tiles: [
        ListTile(
          title: Text('17 เรื่องลับๆของน้องแมว'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const catsThings()));
          },
        ),
        ListTile(
          title: Text('ทำไมเราถึงควรเลี้ยงน้องแมวแบบระบบปิด'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const closeCat()));
          },
        ),
        ListTile(
          title: Text('4 พฤติกรรมที่บอกว่าน้องแมวสุขภาพดี'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const healty()));
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
            color: Colors.orange,
          ),
          child: Icon(Icons.home)),
    );
  }
}
import 'package:cat_what/contentFull.dart';
import 'package:cat_what/createContent.dart';
import 'package:cat_what/firstAidFull.dart';
import 'package:cat_what/models/form_result.dart';
import 'package:cat_what/pages/fifth.dart';
import 'package:cat_what/pages/sixth.dart';
import 'package:flutter/material.dart';

class gridhome extends StatefulWidget {
  @override
  createState() => gridhomeState();
}

class gridhomeState extends State<gridhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cat What'),
      ),
      body: gridhomebody(),
    );
  }
}

class gridhomebody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _gridhomebody(context);
  }
}

Widget _gridhomebody(BuildContext context) {
  return GridView.count(
    primary: false,
    padding: const EdgeInsets.all(20),
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
    crossAxisCount: 2,
    children: <Widget>[
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => gridhome()));
        },
        child: Column(
          children: [
            Icon(Icons.home),
            Container(
            padding: const EdgeInsets.all(8),
            child: Center(child: const Text("Home Page", style: TextStyle(fontSize: 20),)),
            color: Colors.orangeAccent.shade100,
            
      ),
          ],
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => contentFull()));
        },
        child: Column(
          children: [
            Icon(Icons.play_arrow),
            Container(
            padding: const EdgeInsets.all(8),
            child: Center(child: const Text("Content", style: TextStyle(fontSize: 20),)),
            color: Colors.orangeAccent.shade100,
      ),
          ],
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FirstAidFull()));
        },
        child: Column(
          children: [
            Icon(Icons.medication),
            Container(
            padding: const EdgeInsets.all(8),
            child: Center(child: const Text("First Aid", style: TextStyle(fontSize: 20),)),
            color: Colors.orangeAccent.shade200,
      ),
          ],
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => createContent()));
        },
        child: Column(
          children: [
            Icon(Icons.create),
            Container(
            padding: const EdgeInsets.all(8),
            child: Center(child: const Text("Create content", style: TextStyle(fontSize: 20),)),
            color: Colors.orangeAccent.shade200,
      ),
          ],
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => formResult()));
        },
        child: Column(
          children: [
            Icon(Icons.create),
            Container(
            padding: const EdgeInsets.all(8),
            child: Center(child: const Text("Content result", style: TextStyle(fontSize: 20),)),
            color: Colors.orangeAccent.shade400,
      ),
          ],
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => sixth()));
        },
        child: Column(
          children: [
            Icon(Icons.six_k),
            Container(
            padding: const EdgeInsets.all(8),
            child: Center(child: const Text("Sixth Page", style: TextStyle(fontSize: 20),)),
            color: Colors.orangeAccent.shade400,
      ),
          ],
        ),
      ),
    ],
  );
}

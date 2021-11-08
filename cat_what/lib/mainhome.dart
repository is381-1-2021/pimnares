
import 'package:cat_what/Second_page.dart';
import 'package:cat_what/contentFull.dart';
import 'package:cat_what/firstAidFull.dart';
import 'package:cat_what/home_screen.dart';
import 'package:flutter/material.dart';

import 'findMyCat.dart';

class maingridhome extends StatefulWidget {
  @override
  createState() => maingridhomeState();
}

class maingridhomeState extends State<maingridhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cat What', style: (TextStyle(color: Colors.white))),
        backgroundColor: Colors.deepOrange.shade200,
        
      ),
      body: gridhomebody(),
      backgroundColor: Colors.deepOrange.shade100,
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
  var color;
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
              context, MaterialPageRoute(builder: (context) => FindMyCat()));
        },
        child: Column(
          children: [
            Icon(Icons.search,size: 100, color: Colors.white,),
            Container(
            padding: const EdgeInsets.all(8),
            child: Center(child: const Text("Find My Cat", style: TextStyle(fontSize: 20, color: Colors.white),)),
            color: Colors.deepOrange.shade200,
      ),
          ],
        ),
      ),

      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
        },
        child: Column(
          children: [
            Icon(Icons.pets,size: 100, color: Colors.white,),
            Container(
            padding: const EdgeInsets.all(8),
            child: Center(child: const Text("Pet Grooming", style: TextStyle(fontSize: 20, color: Colors.white),)),
            color: Colors.deepOrange.shade200,
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
            Icon(Icons.play_arrow, size: 100, color: Colors.white,),
            Container(
            padding: const EdgeInsets.all(8),
            child: Center(child: const Text("Content", style: TextStyle(fontSize: 20, color: Colors.white),)),
            color: Colors.deepOrange.shade200,

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
            Icon(Icons.medication, size: 100, color: Colors.white,),
            Container(
            padding: const EdgeInsets.all(8),
            child: Center(child: const Text("First Aid", style: TextStyle(fontSize: 20, color: Colors.white),)),
            color: Colors.deepOrange.shade200,
      ),
          ],
        ),
      ),
      
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MossHelp()));
        },
        child: Column(
          children: [
            Icon(Icons.healing,size: 100, color: Colors.white,),
            Container(
            padding: const EdgeInsets.all(8),
            child: Center(child: const Text("SOS", style: TextStyle(fontSize: 20, color: Colors.white),)),
            color: Colors.deepOrange.shade200,
      ),
          ],
        ),
      ),
      
    ],
  );
}

findMyCat() {
}

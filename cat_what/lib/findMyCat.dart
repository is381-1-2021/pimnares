import 'package:flutter/material.dart';

import 'catlist/cat1.dart';
import 'catlist/cat2.dart';
import 'catlist/cat3.dart';
import 'catlist/cat4.dart';
import 'catlist/cat5.dart';
import 'catlist/cat6.dart';

class FindMyCat extends StatefulWidget {
  @override
  createState() => FindMyCatState();
}

class FindMyCatState extends State<FindMyCat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cat What', style: (TextStyle(color: Colors.white))),
        backgroundColor: Colors.deepOrange[300],
        
      ),
      body: gridCatbody(),
      backgroundColor: Colors.white,
    );
  }
}

class gridCatbody extends StatelessWidget {
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
    mainAxisSpacing: 50,
    crossAxisCount: 2,
    children: <Widget>[
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CatOne()));
        },
        child: Column(
          children: [
            Image.asset('assets/cat1.jpg', height: 125, width: 150,),
            Container(
            padding: const EdgeInsets.all(8),
            child: Center(child: const Text("บลอสซัม", style: TextStyle(fontSize: 20, color: Colors.white),)),
            color: Colors.deepOrange[200]
            ),
          ],
        ),
      ),
      
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CatTwo()));
        },
        child: Column(
          children: [
            Image.asset('assets/cat2.jpg', height: 125, width: 150,),            
            Container(
            padding: const EdgeInsets.all(8),
            child: Center(child: const Text("เฉาก๊วย", style: TextStyle(fontSize: 20, color: Colors.white),)),
            color: Colors.deepOrange[200]
            ),
          ],
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CatThree()));
        },
        child: Column(
          children: [
            Image.asset('assets/cat3.jpg', height: 125, width: 150,), 
            Container(
            padding: const EdgeInsets.all(8),
            child: Center(child: const Text("เห็ด", style: TextStyle(fontSize: 20, color: Colors.white),)),
            color: Colors.deepOrange[200],
      ),
          ],
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CatFour()));
        },
        child: Column(
          children: [
            Image.asset('assets/cat4.jpg', height: 125, width: 150,), 
            Container(
            padding: const EdgeInsets.all(8),
            child: Center(child: const Text("โมจิ", style: TextStyle(fontSize: 20, color: Colors.white),)),
            color: Colors.deepOrange[200]
            ),
          ],
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CatFive()));
        },
        child: Column(
          children: [
            Image.asset('assets/cat5.jpg', height: 125, width: 150,),
            Container(
            padding: const EdgeInsets.all(8),
            child: Center(child: const Text("แจ็กพอต", style: TextStyle(fontSize: 20, color: Colors.white),)),
            color: Colors.deepOrange[200]
      ),
          ],
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CatSix()));
        },
        child: Column(
          children: [
            Image.asset('assets/cat6.jpg', height: 125, width: 150,),
            Container(
            padding: const EdgeInsets.all(8),
            child: Center(child: const Text("โมโม", style: TextStyle(fontSize: 20, color: Colors.white),)),
            color: Colors.deepOrange[200]
      ),
          ],
        ),
      ),
    ],
  );
}

//TEST


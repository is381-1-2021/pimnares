import 'package:cat_what/contentFull.dart';
import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cat What',
      theme: ThemeData(
        fontFamily: 'FCPalete',
        primaryColor: Colors.deepOrange.shade200,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page",
        style: TextStyle(fontFamily: 'FCPalette', fontSize: 20),),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => contentFull()));
        },
        child: Card(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: <Widget>[Text('Content',
              style: TextStyle(fontFamily: 'FCPalette', fontSize: 20),)],

            ),
          ),
          
          elevation: 8,
          shadowColor: Colors.deepOrange.shade400,
          margin: EdgeInsets.all(20),
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  BorderSide(color: Colors.deepOrange.shade200, width: 1)),
        ),
      ),
    );
  }
}

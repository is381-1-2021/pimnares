import 'package:cat_what/Archive/constant/font.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GroomCart extends StatefulWidget {
  @override
  _GroomCartState createState() => _GroomCartState();
}

class _GroomCartState extends State<GroomCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Grooming Cart",
          style: Constants.boldHeading,
        ),
        toolbarHeight: 120,
        backgroundColor: Colors.deepOrange[200],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("postinfo").snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData) {}
          return Padding(
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 25),
            child: ListView(
              reverse: true,
              children: snapshot.data!.docs.map((document) {
                return Container(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.black87,
                      radius: 30,
                      child: FittedBox(
                        child: Text(document["catname"]),
                      ),
                    ),
                    title: Text(document["fname"] + ":" + document["email"]),
                    subtitle: Text(document["info"]),
                  ),
                );
              }).toList(),
            ),
          );
        },
      ),
    );
  }
}

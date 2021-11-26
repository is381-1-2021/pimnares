import 'package:cat_what/Archive/constant/font.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'model/groom_model.dart';
import 'screens/groom_cart.dart';
import 'services/groom_service.dart';

class GroomService extends StatefulWidget {
  @override
  _GroomServiceState createState() => _GroomServiceState();
}

class _GroomServiceState extends State<GroomService> {
  List<Groom> grooms = List.empty();
  bool isLoading = false;
  var services = FirebaseServices();
  var controller;
  final Future<FirebaseApp> firebase = Firebase.initializeApp();
  // CollectionReference _Collectio
  //    FirebaseFirestore.instance.collection("grooming_services");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Service Detail",
          style: Constants.boldHeading,
        ),
        toolbarHeight: 120,
        backgroundColor: Colors.deepOrange[200],
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              right: 20.0,
              top: 0.0,
              bottom: 0.0,
            ),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GroomCart()));
                },
                icon: Icon(Icons.shopping_cart)),
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
            itemCount: grooms.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.80,
                        height: MediaQuery.of(context).size.height * 0.40,
                        child: Positioned.fill(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50.0),
                            child: Image.network(
                              grooms[index].image, //change picture
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                              child: Text(grooms[index].type, //name
                                  style: TextStyle(fontSize: 30.0))),
                          Container(
                              child: Text("400 ฿",
                                  style: TextStyle(fontSize: 20.0))), //price
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Container(
                        child: Text(
                            //คำอธิบาย : + description
                            grooms[index].description,
                            style: TextStyle(fontSize: 18.0))),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: MaterialButton(
                            color: Colors.lightBlue[100],
                            shape: CircleBorder(),
                            onPressed: () {},
                            child: Padding(
                              padding: EdgeInsets.all(80),
                              child: Text(
                                'pick services',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}

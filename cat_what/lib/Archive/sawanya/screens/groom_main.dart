import 'dart:developer';

import 'package:cat_what/Archive/constant/font.dart';
import 'package:cat_what/Archive/sawanya/controllers/groom_controller.dart';
import 'package:cat_what/Archive/sawanya/model/groom_model.dart';
import 'package:cat_what/Archive/sawanya/services/groom_service.dart';
import 'package:flutter/material.dart';


import '../groom_service.dart';
import 'groom_cart.dart';

class GroomMain extends StatefulWidget {
  @override
  _GroomMainState createState() => _GroomMainState();
}

class _GroomMainState extends State<GroomMain> {
  List<Groom> grooms = List.empty();
  bool isLoading = false;
  var services = FirebaseServices();
  var controller;

  void initState() {
    super.initState();
    controller = GroomController(services);
    controller.onSync.listen(
      (bool synState) => setState(() => isLoading = synState),
    );
    Future.delayed(Duration(milliseconds: 100), () {
      _getGrooms();
    });
  }

  void _getGrooms() async {
    log('getGroom');
    var newGrooms = await controller.fetchGrooms();
    log('111');
    setState(() => grooms = newGrooms);
    log('222');
  }

  @override
  Widget build(BuildContext context) {
    log('main build');
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Grooming Service",
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
          ]),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => GroomService()));
        }, //change the string navigator
        child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.98,
            height: MediaQuery.of(context).size.height * 0.75,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 30.0,
                bottom: 5.0,
                left: 5.0,
                right: 0.0,
              ),
              child: ListView.builder(
                  itemCount: grooms.length,
                  itemBuilder: (context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      color: Colors.amber,
                      child: Stack(
                        children: [
                          Container(
                            height: 350.0,
                            width: MediaQuery.of(context).size.width * 80,
                            child: Positioned.fill(
                              child: ClipRRect(
                                // clipให้รูปมนๆ ตามกล่อง
                                borderRadius: BorderRadius.circular(50.0),
                                child: Image.network(
                                  grooms[index].image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    grooms[index].type,
                                    style: TextStyle(
                                      fontSize: 40.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            )),
      ),
    );
  }
}

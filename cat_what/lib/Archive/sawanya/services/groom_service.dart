import 'dart:developer';

import 'package:cat_what/Archive/sawanya/model/groom_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';


abstract class Services {
  Future<List<Groom>> getGrooms();
}

class FirebaseServices extends Services {
  @override
  Future<List<Groom>> getGrooms() async {
    log('b1');
    //log(app.toString());
    QuerySnapshot snapshot =
        await FirebaseFirestore.instance.collection('grooming_services').get();
    log('b2');
    log('snapshot : ${snapshot.size}');
    var all = AllGrooms.fromSnapshot(snapshot);
    log('b3');

    return all.Grooms;
    // return Future.value(null);
  }
}

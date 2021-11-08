import 'dart:convert';

import 'package:cat_what/models/ploy_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class Services {
  Future<List<Cat>> getCats();
}

class FirebaseServices extends Services {
  @override
  Future<List<Cat>> getCats() async {
    QuerySnapshot snapshot =
        await FirebaseFirestore
        .instance
        .collection('cw_cats')
        .get();

    var all = AllCats.fromSnapshot(snapshot);

    return all.Cats;
  }
}

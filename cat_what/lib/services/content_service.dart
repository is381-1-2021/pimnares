import 'dart:convert';

import 'package:cat_what/models/content_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class Services {
  Future<List<Content>> getContents();
}

class FirebaseServices extends Services {
  @override
  Future<List<Content>> getContents() async {
    QuerySnapshot snapshot =
        await FirebaseFirestore
        .instance
        .collection('cw_content')
        .get();

    var all = AllContents.fromSnapshot(snapshot);

    return all.Contents;
  }
}

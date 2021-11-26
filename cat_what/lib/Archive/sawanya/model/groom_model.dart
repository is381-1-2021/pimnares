import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

class Groom {
  final String type;
  final int price;
  final String image;
  final String description;

  Groom(this.type, this.price, this.image, this.description);

  factory Groom.fromJson(
    Map<String, dynamic> json,
  ) {
    return Groom(
      json['service'] as String,
      json['price'] as int,
      json['image'] as String,
      json['description'] as String,
    );
  }
}

class AllGrooms {
  final List<Groom> Grooms;

  AllGrooms(this.Grooms);

  factory AllGrooms.fromJson(
    List<dynamic> json,
  ) {
    var x = json.map((record) => Groom.fromJson(record)).toList();

    return AllGrooms(x);
  }

  factory AllGrooms.fromSnapshot(QuerySnapshot snapshot) {
    log('c1');
    var x = snapshot.docs.map((record) {
      return Groom.fromJson(record.data() as Map<String, dynamic>);
    }).toList();
    log('c2');

    return AllGrooms(x);
  }
}

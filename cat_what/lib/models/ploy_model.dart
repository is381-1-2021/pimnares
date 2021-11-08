import 'package:cloud_firestore/cloud_firestore.dart';

class Cat {
  final String name;
  final String breed;
  final String gender;
  final String color;
  final String lostLocation;
  //bool found;

  Cat(this.name, this.breed, this.gender, this.color, this.lostLocation, //this.found
  );

  factory Cat.fromJson(
    Map<String, dynamic> json,
  ) {
    return Cat(
      json['name'] as String,
      json['breed'] as String,
      json['gender'] as String,
      json['color'] as String,
      json['lostLocation'] as String,
      //json['found'] as bool,
    );
  }
}

class AllCats {
  final List<Cat> Cats;

  AllCats(this.Cats);

  factory AllCats.fromJson(
    List<dynamic> json,
  ) {
    var x = json.map((record) => Cat.fromJson(record)).toList();

    return AllCats(x);
  }

  factory AllCats.fromSnapshot(QuerySnapshot snapshot) {
    var x = snapshot.docs.map((record) {
      return Cat.fromJson(record.data() as Map<String, dynamic>);
    }).toList();

    return AllCats(x);
  }
}

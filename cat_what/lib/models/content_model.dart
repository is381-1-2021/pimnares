import 'package:cloud_firestore/cloud_firestore.dart';

class Content {
  final String header;
  final String detail;

  Content(this.header, this.detail
  );

  factory Content.fromJson(
    Map<String, dynamic> json,
  ) {
    return Content(
      json['header'] as String,
      json['detail'] as String,
    );
  }
}

class AllContents {
  final List<Content> Contents;

  AllContents(this.Contents);

  factory AllContents.fromJson(
    List<dynamic> json,
  ) {
    var x = json.map((record) => Content.fromJson(record)).toList();

    return AllContents(x);
  }

  factory AllContents.fromSnapshot(QuerySnapshot snapshot) {
    var x = snapshot.docs.map((record) {
      return Content.fromJson(record.data() as Map<String, dynamic>);
    }).toList();

    return AllContents(x);
  }
}

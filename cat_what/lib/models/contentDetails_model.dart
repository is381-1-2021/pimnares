import 'package:cloud_firestore/cloud_firestore.dart';

class ContentDetail {
  final String header;
  final String detail;

  ContentDetail(this.header, this.detail
  );

  factory ContentDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    return ContentDetail(
      json['header'] as String,
      json['detail'] as String,
    );
  }
}

class AllContentDetails {
  final List<ContentDetail> ContentDetails;

  AllContentDetails(this.ContentDetails);

  factory AllContentDetails.fromJson(
    List<dynamic> json,
  ) {
    var x = json.map((record) => ContentDetail.fromJson(record)).toList();

    return AllContentDetails(x);
  }

  factory AllContentDetails.fromSnapshot(QuerySnapshot snapshot) {
    var x = snapshot.docs.map((record) {
      return ContentDetail.fromJson(record.data() as Map<String, dynamic>);
    }).toList();

    return AllContentDetails(x);
  }
}

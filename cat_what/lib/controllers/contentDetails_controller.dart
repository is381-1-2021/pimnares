import 'dart:async';

import 'package:cat_what/models/contentDetails_model.dart';
import 'package:cat_what/services/contentDetails_service';


class ContentDetailController {
  final DetailServices services;
  List<ContentDetail> ContentDetails = List.empty();

  StreamController<bool> onSyncController = StreamController();
  Stream<bool> get onSync => onSyncController.stream;

  ContentDetailController(this.services);

  Future<List<ContentDetail>> fetchContentDetails() async {
    onSyncController.add(true);
    ContentDetails = await services.getContentDetails();
    onSyncController.add(false);
    return ContentDetails;
  }
}

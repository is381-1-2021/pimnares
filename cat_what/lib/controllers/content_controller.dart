import 'dart:async';

import 'package:cat_what/models/content_model.dart';
import 'package:cat_what/services/content_service.dart';

class ContentController {
  final Services services;
  List<Content> Contents = List.empty();

  StreamController<bool> onSyncController = StreamController();
  Stream<bool> get onSync => onSyncController.stream;

  ContentController(this.services);

  Future<List<Content>> fetchContents() async {
    onSyncController.add(true);
    Contents = await services.getContents();
    onSyncController.add(false);
    return Contents;
  }
}

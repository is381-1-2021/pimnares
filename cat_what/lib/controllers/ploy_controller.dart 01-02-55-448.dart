import 'dart:async';

import 'package:cat_what/models/ploy_model.dart';
import 'package:cat_what/services/ploy_service.dart';

class CatController {
  final Services services;
  List<Cat> Cats = List.empty();

  StreamController<bool> onSyncController = StreamController();
  Stream<bool> get onSync => onSyncController.stream;

  CatController(this.services);

  Future<List<Cat>> fetchCats() async {
    onSyncController.add(true);
    Cats = await services.getCats();
    onSyncController.add(false);
    return Cats;
  }
}

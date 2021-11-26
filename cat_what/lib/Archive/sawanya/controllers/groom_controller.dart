import 'dart:async';
import 'dart:developer';

import 'package:cat_what/Archive/sawanya/model/groom_model.dart';
import 'package:cat_what/Archive/sawanya/services/groom_service.dart';


class GroomController {
  final Services services;
  List<Groom> Grooms = List.empty();

  StreamController<bool> onSyncController = StreamController();
  Stream<bool> get onSync => onSyncController.stream;

  GroomController(this.services);

  Future<List<Groom>> fetchGrooms() async {
    log('a1');
    onSyncController.add(true);
    log('a2');
    Grooms = await services.getGrooms();
    log('a3');
    onSyncController.add(false);
    log('a4');
    return Grooms;
  }
}

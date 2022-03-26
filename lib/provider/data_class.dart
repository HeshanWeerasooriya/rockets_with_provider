import 'package:flutter/material.dart';
import '../model/data_model.dart';
import '../services/service_class.dart';

class DataClass extends ChangeNotifier {
  DataModel? rocket;
  bool loading = false;

  getRocketData() async {
    loading = true;
    rocket = (await getSingleRocketData())!;
    loading = false;

    notifyListeners();
  }
}

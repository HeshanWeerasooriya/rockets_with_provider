import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import '../model/data_model.dart';

Future<DataModel?> getSingleRocketData() async {
  DataModel? result;
  try {
    final response = await http.get(
      Uri.parse(
          "https://api.spacexdata.com/v4/rockets/5e9d0d95eda69955f709d1eb"),
    );
    if (response.statusCode == 200) {
      final item = json.decode(response.body);
      result = DataModel.fromJson(item);
    } else {
      print("error");
    }
  } catch (e) {
    log(e.toString());
  }
  return result;
}

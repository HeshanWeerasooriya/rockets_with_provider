import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import '../model/data_model.dart';

Future<DataModel?> getSinglePostData() async {
  try {
    final response = await http.get(
      Uri.parse("https://api.spacexdata.com/v4/rockets"),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body).map<DataModel>((data) {
        return DataModel.fromJson(data);
      }).toList();
    } else {
      throw Exception('Failed to load rockets');
    }
  } catch (e) {
    log(e.toString());
  }
}

import 'dart:convert';
import 'dart:developer';

import 'package:netfilx_app_ui_api/domain/core/api_enpoints.dart';
import 'package:netfilx_app_ui_api/domain/models/dowlnoadsmodel/dowloadsmodel.dart';
import 'package:netfilx_app_ui_api/domain/models/dowlnoadsmodel/modelcopy.dart';
import 'package:http/http.dart' as http;

class Dowrepo {
  fetchdowimage() async {
    try {
      final response = await http.get(Uri.parse(ApiEnpoints.apidownloads));
      if (response.statusCode == 200 || response.statusCode == 201) {
        log("seccess");

        var result = await jsonDecode(response.body);
        var json = DownloadModel.fromJson(result);
        log(json.results![0].backdropPath.toString());
        return json;
      } else {
        return null;
      }
    } catch (e) {
      print("eroor");
      //  // log(e.toString());
    }
  }
}

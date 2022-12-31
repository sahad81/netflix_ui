import 'dart:convert';
import 'dart:developer';

import 'package:netfilx_app_ui_api/domain/core/api_enpoints.dart';
import 'package:netfilx_app_ui_api/domain/models/dowlnoadsmodel/dowloadsmodel.dart';
import 'package:http/http.dart' as http;

class Dowrepo {
Future <DownloadModel?>  fetchdowimage() async {
    try {
      final response = await http.get(Uri.parse(ApiEnpoints.apidownloads));
      if (response.statusCode == 200 || response.statusCode == 201) {
        log("seccess");

        var result = await jsonDecode(response.body);
        var json =DownloadModel.fromJson(result);
        log(json.results![0].backdropPath.toString());
        return json;
      } else {
        return null;
      }
    } catch (e) {
   log("error");
      //  // log(e.toString());
    }
    return null;
  }
}

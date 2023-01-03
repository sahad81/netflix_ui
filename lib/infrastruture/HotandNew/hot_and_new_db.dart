import 'dart:convert';
import 'dart:developer';

import 'package:netfilx_app_ui_api/domain/core/api_enpoints.dart';

import 'package:http/http.dart' as http;
import 'package:netfilx_app_ui_api/domain/models/model_hot_and_new.dart';

class HotandNewRepoo {
  // ignore: non_constant_identifier_names
  Future<ModelHotAndNew?> hotandnewfetchdata_comingSoon() async {
    try {
      final response = await http.get(Uri.parse(ApiEnpoints.apiforNewAndHotComimgSoon));
      if (response.statusCode == 200 || response.statusCode == 201) {
        log("seccess");

        var result = await jsonDecode(response.body);
        var json = ModelHotAndNew.fromJson(result);
        log("${json.results![0].backdropPath.toString()}new and hot");
        return json;
      } else {
        return null;
      }
    } catch (e) {
      log("error");
    }
    return null;
  }
    // ignore: non_constant_identifier_names
    Future<ModelHotAndNew?> hotandnewfetchdata_everyone_is_watching() async {
    try {
      final response = await http.get(Uri.parse(ApiEnpoints.apiforNewAndHotEveryoneisWatching));
      if (response.statusCode == 200 || response.statusCode == 201) {
        log("seccess");

        var result = await jsonDecode(response.body);
        var json = ModelHotAndNew.fromJson(result);
      
        return json;
      } else {
        return null;
      }
    } catch (e) {
      log("error");
    }
    return null;
  }
}

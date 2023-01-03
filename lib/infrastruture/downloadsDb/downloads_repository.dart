import 'dart:convert';
import 'dart:developer';


import 'package:get/get.dart';
import 'package:netfilx_app_ui_api/core/colors/const.dart';
import 'package:netfilx_app_ui_api/domain/core/api_enpoints.dart';
import 'package:netfilx_app_ui_api/domain/models/dowloadsmodel.dart';
import 'package:http/http.dart' as http;

class Dowrepo {
// ignore: non_constant_identifier_names, body_might_complete_normally_nullable
Future <TrandingModel?>  fetchimage( String Page) async {
    try {
      final response = await http.get(Uri.parse("${ApiEnpoints.apidownloads}&page=$Page"));
      if (response.statusCode == 200 || response.statusCode == 201) {
        log("seccess");

        var result = await jsonDecode(response.body);
        var json =TrandingModel.fromJson(result);
       
        return json;
      } else {
        log('problem');
      }
    } catch (e) {
   log("error////////////////////////////");
   Get.snackbar("error",e.toString(),backgroundColor: white,);
      //  // log(e.toString());
    }
  
  }
}

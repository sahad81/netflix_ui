import 'dart:convert';
import 'dart:developer';


import 'package:http/http.dart' as http;
import 'package:netfilx_app_ui_api/domain/core/api_enpoints.dart';
import 'package:netfilx_app_ui_api/domain/models/mode_in_search.dart';



class SearchRepo {
  ModelSerarch? modeldata;

    
 Future<ModelSerarch?> fetchdata(String typ)async{


   try {
      final response = await http.get(Uri.parse("${ApiEnpoints.apiforsearch}$typ"));
      if (response.statusCode == 200 || response.statusCode == 201) {
        log("seccess searchdaa f");

        var result = await jsonDecode(response.body);
         modeldata = ModelSerarch.fromJson(result);

        return modeldata;
      } else {
        return null;
      }
    } catch (e) {
      log("eroor");
      //  // log(e.toString());
    }
   return null;


  }
  Future <ModelSerarch?>  topshearches(pagenum) async {
    try {
      final response = await http.get(Uri.parse("${ApiEnpoints.apidownloads}&page=$pagenum"));
      if (response.statusCode == 200 || response.statusCode == 201) {
        log("seccess");

        var result = await jsonDecode(response.body);
        var json =ModelSerarch.fromJson(result);
       
        return json;
      } else {
        return null;
      }
    } catch (e) {
      log("eroor top searches");
      //  // log(e.toString());
    }
    return null;
  }
  }
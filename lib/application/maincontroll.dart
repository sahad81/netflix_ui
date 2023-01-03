import 'dart:developer';

import 'package:get/get.dart';
import 'package:netfilx_app_ui_api/domain/models/dowloadsmodel.dart';

import 'package:netfilx_app_ui_api/domain/models/mode_in_search.dart';
import 'package:netfilx_app_ui_api/infrastruture/downloadsDb/downloads_repository.dart';

import 'package:netfilx_app_ui_api/infrastruture/serch/search_reposetory.dart';

class Controllerr extends GetxController {
  var releasedInthePastyear = TrandingModel().obs;

  RxBool typ = true.obs;
  // ignore: non_constant_identifier_names
  var get_img_for_dow = false.obs;
  RxBool pastrelesed = true.obs;
  RxBool trandingloading = true.obs;
  RxBool top10loading = true.obs;
  RxBool temseLoading = true.obs;
  RxBool southindialoading = true.obs;
  SearchRepo searchreppoo = SearchRepo();
  Dowrepo tranding = Dowrepo();
   RxBool serachnloading=true.obs;
//==================
  var modelSerarchcn = ModelSerarch().obs;

  var trandingNow = TrandingModel().obs;
  var top10 = TrandingModel().obs;
  var tansedramas = TrandingModel().obs;
  var southIndiaMovies = TrandingModel().obs;
//===========funtions====================//
  releasedInthePastyearfn() async {
    try {
      pastrelesed.value = true;

      var data = (await tranding.fetchimage("15"));
      if (data != null) {
        releasedInthePastyear.value = data;
        pastrelesed.value = false;
      }
    } catch (e) {
      Get.snackbar("errro", "$e");
    }
  }

  trandingNowfn() async {
    try {
      trandingloading.value = true;
      var data = (await tranding.fetchimage("1"));
      if (data != null) {
        trandingNow.value = data;
        trandingloading.value = false;
      }
    } catch (e) {
      Get.snackbar("errro", e.toString());
    }
  }

  top10movies() async {
    try {
       top10loading.value = true;
      var dtop10 = (await tranding.fetchimage("3"));
      if (dtop10 != null) {
        top10.value = dtop10;
         top10loading.value = false;
      }
    } catch (e) {
      Get.snackbar("errro",   e.toString());
    }
  }

  temseDramas() async {
    try {
      temseLoading.value=true;
      var data = (await tranding.fetchimage("4"));
      if (data != null) {
        tansedramas.value = data;
        temseLoading.value=false;
      }
    } catch (e) {
      Get.snackbar("errro", "check your connection");
    }
  }

  southIndia() async {
    try {
      southindialoading.value=true;
      var data = (await tranding.fetchimage("6"));
      if (data != null) {
        southIndiaMovies.value = data;
        southindialoading.value=false;
      }
    } catch (e) {
      Get.snackbar("errro", "check your connection");
    }
  }

  @override
  void onInit() {
    first();

    super.onInit();
  }

  void first() {
    releasedInthePastyearfn();
    //  getsearchdata("tranding");
    top10movies();
    trandingNowfn();
    temseDramas();

    southIndia();
  }

 getsearchdata(String? type) async {

try {
  serachnloading.value=true;
    var data = (await searchreppoo.fetchdata(type.toString()));
 

if (data!=null) {
  modelSerarchcn.value=data;
  serachnloading.value=false;
}


  
} catch (e) {
  log(e.toString());
}
 }}

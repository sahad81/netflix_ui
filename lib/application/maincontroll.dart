import 'package:get/get.dart';

import 'package:netfilx_app_ui_api/domain/models/mode_in_search.dart';

import 'package:netfilx_app_ui_api/infrastruture/serch/search_reposetory.dart';

class Controllerr extends GetxController {
  RxBool typ = true.obs;
  // ignore: non_constant_identifier_names
  var get_img_for_dow = false.obs;
  SearchRepo searchreppoo = SearchRepo();
   ModelSerarch? modelSerarchcn = ModelSerarch();

  Future<ModelSerarch> getsearchdata(String? type) async {
    modelSerarchcn.obs;

    modelSerarchcn = (await searchreppoo.fetchdata(type.toString()));
    update();
    return modelSerarchcn!;
  }
  @override
  void onInit() {
   getsearchdata("tranding");
   update();
    super.onInit();
  }
}

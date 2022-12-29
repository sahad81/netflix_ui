
import 'dart:developer';

import 'package:get/get.dart';
import 'package:netfilx_app_ui_api/domain/models/dowlnoadsmodel/dowloadsmodel.dart';
import 'package:netfilx_app_ui_api/domain/models/dowlnoadsmodel/modelcopy.dart';
import 'package:netfilx_app_ui_api/infrastruture/downloadsDb/downloads_repository.dart';




class Controllerr extends GetxController{

var get_img_for_dow=false.obs;
var datamodeldow=DownloadModel();
@override
  void onReady() {
   Dowrepo().fetchdowimage();
    super.onReady();






}}
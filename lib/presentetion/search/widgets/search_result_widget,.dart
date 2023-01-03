import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:netfilx_app_ui_api/application/maincontroll.dart';

import 'package:netfilx_app_ui_api/core/colors/const.dart';
import 'package:netfilx_app_ui_api/core/strings.dart';

import 'package:netfilx_app_ui_api/presentetion/search/widgets/titile.dart';

class SearchResult extends StatelessWidget {
  SearchResult({super.key});
  final contr = Get.put(Controllerr());
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        hight,
        const titile(text: "Movies and Tv"),
        hight,
   Obx(()=>
    contr.serachnloading.isFalse?

           Expanded(
            child: GridView.count(
                mainAxisSpacing: 5,
                childAspectRatio: 1 / 1.5,
                crossAxisSpacing: 5,
                shrinkWrap: true,
                crossAxisCount: 3,
                children: List.generate(
                    // ignore: unnecessary_null_comparison
                    contr.modelSerarchcn != null
                        ? contr.modelSerarchcn.value.results!.length
                        : 1, (index) {
                  // ignore: unnecessary_null_comparison
                  return contr.modelSerarchcn == null
                      ? const Center(child: CircularProgressIndicator())
                      : Maincard(
                          index: index,
                        );
                }
                )
                )
                ):const Center(child: CircularProgressIndicator(),))
   
      ],
    );
  }
}

// ignore: must_be_immutable

// ==================cards================
class Maincard extends StatelessWidget {
  Maincard({super.key, required this.index});
  final int index;

  Controllerr controller = Get.put(Controllerr());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Controllerr>(builder: (c) {
      return c.modelSerarchcn.value.results![index].posterpath == null
          ? const Center(child: CircularProgressIndicator())
          : Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "$kImageBaseUrl${controller.modelSerarchcn.value.results![index].posterpath}")),
                  borderRadius: BorderRadius.circular(12)),
            );
    });
  }
}

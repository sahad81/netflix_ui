import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netfilx_app_ui_api/application/maincontroll.dart';

import 'package:netfilx_app_ui_api/presentetion/search/widgets/search_idel.dart';
import 'package:netfilx_app_ui_api/presentetion/search/widgets/search_result_widget.dart';

class Searchsreen extends StatelessWidget {
  Searchsreen({super.key});
  final contrl = Get.put(Controllerr());
  @override
  Widget build(BuildContext context) {
    contrl.typ.value = false;
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            onChanged: (values) {
              if (values.isEmpty) {
                contrl.typ.value = false;
              } else {
                contrl.typ.value = true;
                contrl.getsearchdata(values);
              }
            },
            style: const TextStyle(),
            textInputAction: TextInputAction.search,
            onSubmitted: (value) {
              contrl.getsearchdata(value);
            },
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.withOpacity(.4),
                suffixIcon: const Icon(CupertinoIcons.xmark_circle_fill),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                hintText: "search",
                hintStyle: const TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white),
                )),
          ),

//check textfield is open or not=================================
          Obx(
            () => Expanded(
                child: contrl.typ.value == true
                    ? SearchResult()
                    : const SearchIdelWidget()),
          )
        ],
      ),
    )));
  }
}

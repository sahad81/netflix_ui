import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netfilx_app_ui_api/core/colors/const.dart';

import 'package:netfilx_app_ui_api/presentetion/mainpage/widgets/screen_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
         
            primarySwatch: Colors.blueGrey,
            backgroundColor: Colors.black,
            scaffoldBackgroundColor: backgroundcColor,
            textTheme: const TextTheme(
                bodyText1: TextStyle(
                  color: Colors.white,
                ),
                bodyText2: TextStyle(
                  color: Colors.white,
                ))),
        home: Screenmainpage());
  }
}

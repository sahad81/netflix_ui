import 'package:flutter/material.dart';

import 'package:netfilx_app_ui_api/core/colors/const.dart';

import 'package:netfilx_app_ui_api/presentetion/downloads/dow.dart';
import 'package:netfilx_app_ui_api/presentetion/home/home.dart';

import 'package:netfilx_app_ui_api/presentetion/hot_and_new/hot_and_new.dart';

import 'package:netfilx_app_ui_api/presentetion/fastlughscreen.dart/fast_laugh.dart';
import 'package:netfilx_app_ui_api/presentetion/mainpage/widgets/bottom_nav.dart';
import 'package:netfilx_app_ui_api/presentetion/search/search.dart';

// ignore: must_be_immutable
class Screenmainpage extends StatelessWidget {
  Screenmainpage({super.key});

  List list = [
     Homepage(),
    const Hotandnew(),
    const ScreenFastLsugh(),
    Searchsreen(),
    Dowpage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcColor,
      body: ValueListenableBuilder(
        valueListenable: indexnotifire,
        builder: (context, page, child) {
          return list[page];
        },
      ),
      bottomNavigationBar: const BottomNavigationwidget(),
    );
  }
}

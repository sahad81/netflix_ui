import 'package:flutter/material.dart';

import 'package:netfilx_app_ui_api/core/colors/const.dart';
import 'package:netfilx_app_ui_api/infrastruture/presentetion/home/widgets/homepagewidgets.dart';
import 'package:netfilx_app_ui_api/infrastruture/presentetion/search/widgets/titile.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  @override
  Widget build( context) {
    return  Scaffold(
      backgroundColor: backgroundcColor,
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
            
                children: [
                  Maintaitilecard(titiles: "Released in the past year"),
                  hight,
                   Maintaitilecard(titiles: "tranding now"),
                   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
      "Top 10 tv shows in india tosay",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
    ),
   
    hight,
    LimitedBox(
      
      maxHeight: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(17, (index) => MaincardH()),
      ),
    ),
        ],
      ),
                     Maintaitilecard(titiles: "Tense Dramas"),
                       Maintaitilecard(titiles: "south indian cinimas"),
                ],
              ),
            ),
          )),
    );
  }
}




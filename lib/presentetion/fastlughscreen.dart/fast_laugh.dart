import 'package:flutter/material.dart';
import 'package:netfilx_app_ui_api/core/colors/const.dart';

import 'package:netfilx_app_ui_api/presentetion/fastlughscreen.dart/widgets/vediolistintem.dart';


class ScreenFastLsugh extends StatelessWidget {
  const ScreenFastLsugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcColor,
      body: SafeArea(child: 
      PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(10, (index) {
        
          return vediolistItems(index: index,);
        })
          
        ,
      )
      
      )
    );
  }
}
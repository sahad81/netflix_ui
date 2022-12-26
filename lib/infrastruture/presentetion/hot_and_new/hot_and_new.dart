import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:netfilx_app_ui_api/core/colors/const.dart';

class Hotandnew extends StatelessWidget {
  const Hotandnew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcColor,
      body: SafeArea(child: 
      Text("hot&new")),
    );
  }
}
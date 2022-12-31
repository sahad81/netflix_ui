import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netfilx_app_ui_api/core/colors/const.dart';

class ImagewithContainer extends StatelessWidget {
  const ImagewithContainer(
      {Key? key,
      this.angle = 0,
      required this.margin,
      required this.url,
      required this.size,
      this.borderderdious = 10})
      : super(key: key);
  final double angle;
  final EdgeInsets margin;
  final String url;
  final Size size;
  final double? borderderdious;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 100,
        child: ClipRect(
          child: Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderderdious!),
              image:
                  DecorationImage(fit: BoxFit.cover, image: NetworkImage(url)),
            ),
          ),
        ),
      ),
    );
  }
}
class SmartDowloads extends StatelessWidget {
  const SmartDowloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.settings,
          color: white,
        ),
        Text(
          "Smart Downloads",
          style: TextStyle(color: white),
        )
      ],
    );
  }
}

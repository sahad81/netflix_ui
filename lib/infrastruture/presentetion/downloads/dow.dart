import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netfilx_app_ui_api/core/colors/const.dart';

class Dowpage extends StatelessWidget {
   Dowpage({super.key});
  
  final List image1 =[
        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vNVFt6dtcqnI7hqa6LFBUibuFiw.jpg",
     "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vNVFt6dtcqnI7hqa6LFBUibuFiw.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ryKwNlAfDXu0do6SX9h4G9Si1kG.jpg",
    ];
  @override
  Widget build(BuildContext context) {
  
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundcColor,
      appBar: AppBar(
        backgroundColor: backgroundcColor,
        title: Text(
          "Downloads",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const _smart_dowloads(),
          ),
          hight,
          const Text(
            "Indruducing Dowloads For You",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          hight,
          const Text(
            "we will dowload a personalised selection of\n movies and shows for you,so there,s\nalways somthing watch yous\ndivice",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          hight,
          SizedBox(
            width: size.width,
            height: size.width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: size.width * 0.40,
                    backgroundColor: Colors.grey.withOpacity(.5),
                  ),
                ),
                imagewithcontainer(
                    margin: EdgeInsets.only(left: 170, top: 50),
                    angle: 20,
                    size: Size(size.width * 0.35, size.width * 0.55),
                    url: image1[0]),
                imagewithcontainer(
                    size: Size(size.width * 0.35, size.width * 0.55),
                    margin: EdgeInsets.only(right: 170, top: 50),
                    angle: -20,
                    url:
                       image1[1]),
                imagewithcontainer(
                  borderderdious: 10,
                  size: Size(size.width * 0.40, size.width * 0.65),
                  margin: EdgeInsets.only(bottom: 50, top: 50),
                  url:
                    image1[2]
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: blue,
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  "SetUp",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: white,
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "See What You Can Dowload",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}

class _smart_dowloads extends StatelessWidget {
  const _smart_dowloads({
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

class imagewithcontainer extends StatelessWidget {
  const imagewithcontainer(
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

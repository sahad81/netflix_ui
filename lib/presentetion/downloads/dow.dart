import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/circular_reveal_clipper.dart';
import 'package:netfilx_app_ui_api/application/maincontroll.dart';
import 'package:netfilx_app_ui_api/core/colors/const.dart';
import 'package:netfilx_app_ui_api/domain/models/dowlnoadsmodel/dowloadsmodel.dart';
import 'package:netfilx_app_ui_api/domain/models/dowlnoadsmodel/modelcopy.dart';
import 'package:netfilx_app_ui_api/infrastruture/downloadsDb/downloads_repository.dart';

DownloadModel dow = DownloadModel();

class Dowpage extends StatelessWidget {
  Dowpage({super.key});
  final controller = Get.put(Controllerr());

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: backgroundcColor,
        appBar: AppBar(
          backgroundColor: backgroundcColor,
          title: const Text(
            "DOWNLOADS",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(child:
            GetBuilder<Controllerr>(builder: (context) {
          return ListView(children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: _smart_dowloads(),
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
              child: Stack(alignment: Alignment.center, children: [
                Center(
                  child: CircleAvatar(
                    radius: size.width * 0.40,
                    backgroundColor: Colors.grey.withOpacity(.5),
                  ),
                ),
                imagewithcontainer(
                    margin: const EdgeInsets.only(left: 170, top: 50),
                    angle: 20,
                    size: Size(size.width * 0.35, size.width * 0.55),
                    url:
                        // controller.datamodeldow.results == null
                        //     ? ""
                        //     :
                        "https://image.tmdb.org/t/p/w500${controller.datamodeldow.results![0].backdropPath}"),
                imagewithcontainer(
                    size: Size(size.width * 0.35, size.width * 0.55),
                    margin: const EdgeInsets.only(right: 170, top: 50),
                    angle: -20,
                    url: controller.datamodeldow.results == null
                        ? ""
                        : "https://image.tmdb.org/t/p/w500${controller.datamodeldow.results![0].backdropPath}"),
                imagewithcontainer(
                    borderderdious: 10,
                    size: Size(size.width * 0.40, size.width * 0.65),
                    margin: const EdgeInsets.only(bottom: 50, top: 50),
                    url: controller.datamodeldow.results == null
                        ? ""
                        : "https://image.tmdb.org/t/p/w500${controller.datamodeldow.results![0].backdropPath}"),
              ]),
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
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
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
          ]);
        })));
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

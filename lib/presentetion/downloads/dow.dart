

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:netfilx_app_ui_api/application/maincontroll.dart';
import 'package:netfilx_app_ui_api/core/colors/const.dart';
import 'package:netfilx_app_ui_api/core/strings.dart';
import 'package:netfilx_app_ui_api/domain/models/dowlnoadsmodel/dowloadsmodel.dart';

import 'package:netfilx_app_ui_api/infrastruture/downloadsDb/downloads_repository.dart';
import 'package:netfilx_app_ui_api/presentetion/downloads/widgets/widgetzsdow.dart';

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
        body: SafeArea(
            child: FutureBuilder<DownloadModel?>(
                future: Dowrepo().fetchdowimage(),
                builder: (context, AsyncSnapshot snapshot) {
                  final data = snapshot.data;
                  if (snapshot.hasData) {
                    return ListView(children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: SmartDowloads(),
                      ),
                      hight,
                      const Text(
                        // data.results![0].title.toString(),
                        "Indruducing Dowloads For You",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
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
                        ImagewithContainer(
                              margin: const EdgeInsets.only(left: 170, top: 50),
                              angle: 20,
                              size: Size(size.width * 0.35, size.width * 0.55),
                              url: data.results == null
                                  ? "https://www.themoviedb.org/t/p/w220_and_h330_face/xG94Dc7LJ0NEYZ0hGTNnHuMKugl.jpg"
                                  : "$kImageBaseUrl${data.results![3].backdropPath}"),
                          ImagewithContainer(
                              size: Size(size.width * 0.35, size.width * 0.55),
                              margin:
                                  const EdgeInsets.only(right: 170, top: 50),
                              angle: -20,
                              url: data.results == null
                                  ? "https://www.themoviedb.org/t/p/w220_and_h330_face/xG94Dc7LJ0NEYZ0hGTNnHuMKugl.jpg"
                                  : "$kImageBaseUrl${data.results![2].backdropPath}"),
                          ImagewithContainer(
                              borderderdious: 10,
                              size: Size(size.width * 0.40, size.width * 0.65),
                              margin:
                                  const EdgeInsets.only(bottom: 50, top: 50),
                              url: data.results == null
                                  ? "https://www.themoviedb.org/t/p/w220_and_h330_face/xG94Dc7LJ0NEYZ0hGTNnHuMKugl.jpg"
                                  : "$kImageBaseUrl${data.results![5].backdropPath}"),
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
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
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                })));
  }
}



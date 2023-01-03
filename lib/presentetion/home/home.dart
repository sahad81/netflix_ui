import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:netfilx_app_ui_api/application/maincontroll.dart';

import 'package:netfilx_app_ui_api/core/colors/const.dart';
import 'package:netfilx_app_ui_api/core/strings.dart';
import 'package:netfilx_app_ui_api/presentetion/home/widgets/homepagewidgets.dart';

ValueNotifier<bool> srollnotifire = ValueNotifier(true);

class Homepage extends StatelessWidget {
  Homepage({super.key});
  final controller = Get.put(Controllerr());
  @override
  Widget build(context) {
    return Scaffold(
        backgroundColor: backgroundcColor,
        body: ValueListenableBuilder(
          valueListenable: srollnotifire,
          builder: (context, value, child) {
            return SafeArea(
                //===========refresh==============
                child: RefreshIndicator(
              onRefresh: () async {
                controller.releasedInthePastyearfn();
                controller.trandingNowfn();
                controller.top10movies();
                controller.temseDramas();
                controller.southIndia();
              },

              //====================
              child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: NotificationListener<UserScrollNotification>(
                      onNotification: (notification) {
                        final ScrollDirection direction =
                            notification.direction;
                        log(direction.toString());
                        if (direction == ScrollDirection.reverse) {
                          srollnotifire.value = false;
                        } else if (direction == ScrollDirection.forward) {
                          srollnotifire.value = true;
                        }
                        return true;
                      },
                      child: Stack(children: [
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 730,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/profile.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 0,
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 8),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          const iconbtn(
                                            icon: Icons.add,
                                            text: "my list",
                                          ),
                                          TextButton.icon(
                                              onPressed: () {},
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                Colors.white,
                                              )),
                                              icon: const Icon(
                                                Icons.play_arrow,
                                                size: 20,
                                              ),
                                              label: const Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10),
                                                child: Text(
                                                  "play  ",
                                                  style: TextStyle(
                                                      color: backgroundcColor,
                                                      fontSize: 20),
                                                ),
                                              )),
                                          const iconbtn(
                                            icon: Icons.info,
                                            text: "info",
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  hight,
                                  hight
                                ],
                              ),
                              Column(
                                children: [
                                  Obx(
                                    () {
                                      return Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              "Released in the past year",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22),
                                            ),
                                            hight,

                                            controller.pastrelesed.isFalse
                                                ? LimitedBox(
                                                    maxHeight: 200,
                                                    child: ListView(
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        children: List.generate(
                                                            controller
                                                                        .releasedInthePastyear
                                                                        .value
                                                                        .results ==
                                                                    null
                                                                ? 0
                                                                : controller
                                                                    .southIndiaMovies
                                                                    .value
                                                                    .results!
                                                                    .length,
                                                            (index) =>
                                                                MaincardH(
                                                                  image:
                                                                      "$kImageBaseUrl${controller.releasedInthePastyear.value.results![index].posterpath}",
                                                                ))),
                                                  )
                                                : const Center(
                                                    child:
                                                        CircularProgressIndicator(
                                                            strokeWidth: 3),
                                                  ),

                                            hight,
                                            controller.trandingloading.isFalse
                                                ? Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const Text(
                                                        "Tranding Now",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 22),
                                                      ),
                                                      hight,
                                                      LimitedBox(
                                                        maxHeight: 200,
                                                        child: ListView(
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          children:
                                                              List.generate(
                                                                  controller
                                                                      .trandingNow
                                                                      .value
                                                                      .results!
                                                                      .length,
                                                                  (index) =>
                                                                      MaincardH(
                                                                        image:
                                                                            "$kImageBaseUrl${controller.trandingNow.value.results![index].posterpath}",
                                                                      )),
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                : const Center(
                                                    child:
                                                        CircularProgressIndicator()),
                                            hight,
                                            const Text(
                                              "Top 10 tv shows in india tosay",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22),
                                            ),
                                            hight,
                                            controller.top10loading.isFalse
                                                ? LimitedBox(
                                                    maxHeight: 200,
                                                    child: ListView(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      children: List.generate(
                                                          10,
                                                          (index) =>
                                                              CardwithNum(
                                                                image:
                                                                    "$kImageBaseUrl${controller.top10.value.results![index].posterpath}",
                                                                index: index,
                                                              )),
                                                    ),
                                                  )
                                                : const Center(
                                                    child:
                                                        CircularProgressIndicator(),
                                                  ),
                                 
                                                const Text(
                                                  "Tense Dramas",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 22),
                                                ),
                                                hight,
                                           controller.temseLoading.isFalse?
     LimitedBox(
                                                  maxHeight: 200,
                                                  child: ListView(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      children: List.generate(
                                                          controller
                                                              .tansedramas.value
                                                              .results!
                                                              .length,
                                                          (index) =>
                                                              MaincardH(
                                                                image:
                                                                    "$kImageBaseUrl${controller.tansedramas.value.results![index].posterpath}",
                                                              ))),
     )
                                           :const Center(child: CircularProgressIndicator(),),
                                        
                                        

                                     hight,
                                                const Text(
                                                  "SouthIndian Movies",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 22),
                                                      
                                                ),
                                                hight,
                                                   controller.southindialoading.isFalse?
                                                LimitedBox(
                                                  maxHeight: 200,
                                                  child: ListView(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      children: List.generate(
                                                          controller
                                                              .southIndiaMovies.value
                                                              .results!
                                                              .length,
                                                          (index) =>
                                                              MaincardH(
                                                                image:
                                                                    "$kImageBaseUrl${controller.southIndiaMovies.value.results![index].posterpath}",
                                                              ))),
                                                )
                                              
                                            
                                           :const Center(child: CircularProgressIndicator(),)
                                          ]);
                                    },
                                  ),
                                ],
                              ),
                              // srollnotifire.value == true
                              //     ? AnimatedContainer(
                              //         duration:
                              //             const Duration(microseconds: 100),
                              //         width: double.infinity,
                              //         height: 100,
                              //         decoration: const BoxDecoration(
                              //             gradient: LinearGradient(
                              //           colors: [
                              //             Colors.transparent,
                              //             Colors.black
                              //           ],
                              //           begin: Alignment.bottomCenter,
                              //           end: Alignment.topCenter,
                              //         )),
                              //         child: Column(
                              //           children: [
                              //             Row(
                              //               children: [
                              //                 Padding(
                              //                   padding:
                              //                       const EdgeInsets.all(8.0),
                              //                   child: Image.network(
                              //                     firstimage,
                              //                     height: 60,
                              //                     width: 60,
                              //                   ),
                              //                 ),
                              //                 const Spacer(),
                              //                 const Padding(
                              //                   padding:
                              //                       EdgeInsets.only(right: 10),
                              //                   child: Icon(
                              //                     Icons.cast,
                              //                     size: 40,
                              //                     color: Colors.white,
                              //                   ),
                              //                 ),
                              //               ],
                              //             ),
                              //             Row(
                              //               mainAxisAlignment:
                              //                   MainAxisAlignment.spaceEvenly,
                              //               children: const [
                              //                 Text("Tv shows"),
                              //                 Text("Movies"),
                              //                 Text("categories")
                              //               ],
                              //             )
                              //           ],
                              //         ),
                              //       )
                              //     : hight
                            ],
                          ),
                        ),
                      ]))),
            ));
          },
        ));
  }
}

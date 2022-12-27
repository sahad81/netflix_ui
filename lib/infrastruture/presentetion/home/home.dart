import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:netfilx_app_ui_api/core/colors/const.dart';
import 'package:netfilx_app_ui_api/infrastruture/presentetion/home/widgets/homepagewidgets.dart';

ValueNotifier<bool> srollnotifire = ValueNotifier(true);

class Homepage extends StatelessWidget {
  Homepage({super.key});

  @override
  Widget build(context) {
    return Scaffold(
        backgroundColor: backgroundcColor,
        body: ValueListenableBuilder(
          valueListenable: srollnotifire,
          builder: (context, value, child) {
            return SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(10),
              child: NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  final ScrollDirection direction = notification.direction;
                  log(direction.toString());
                  if (direction == ScrollDirection.reverse) {
                    srollnotifire.value = false;
                  } else if (direction == ScrollDirection.forward) {
                    srollnotifire.value = true;
                  }
                  return true;
                },
                child: Stack(
                  children: [
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
                                        image: NetworkImage(mainimage),
                                        fit: BoxFit.cover)),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
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
                          const Maintaitilecard(
                              titiles: "Released in the past year"),
                          hight,
                          const Maintaitilecard(titiles: "tranding now"),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Top 10 tv shows in india tosay",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              ),
                              hight,
                              LimitedBox(
                                maxHeight: 200,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: List.generate(
                                      17,
                                      (index) => CardwithNum(
                                            index: index,
                                          )),
                                ),
                              ),
                            ],
                          ),
                          Maintaitilecard(titiles: "Tense Dramas"),
                          Maintaitilecard(titiles: "south indian cinimas"),
                        ],
                      ),
                    ),
                    srollnotifire.value == true
                        ? AnimatedContainer(
                          duration: Duration(microseconds: 100),
                            width: double.infinity,
                            height: 100,
                           decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: [Colors.transparent, Colors.black],
begin: Alignment.bottomCenter,
end: Alignment.topCenter,


)
                           ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.network(
                                        "https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Netflix_icon.svg/1200px-Netflix_icon.svg.png",
                                        height: 60,
                                        width: 60,
                                      ),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(Icons.cast,size: 40,color: Colors.white,),
                                    )                                 ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
Text("Tv shows"),
Text("Movies"),
Text("categories")
                                  ],
                                )
                              ],
                            ),
                          )
                        : hight
                  ],
                ),
              ),
            ));
          },
        ));
  }
}

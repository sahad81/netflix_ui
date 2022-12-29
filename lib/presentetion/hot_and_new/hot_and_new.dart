import 'package:flutter/material.dart';

import 'package:netfilx_app_ui_api/core/colors/const.dart';

import 'package:netfilx_app_ui_api/presentetion/hot_and_new/widgets/coming_soon_widget.dart';
import 'package:netfilx_app_ui_api/presentetion/hot_and_new/widgets/everyones_watching_widget.dart';

class Hotandnew extends StatelessWidget {
  const Hotandnew({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: backgroundcColor,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: AppBar(
              backgroundColor: backgroundcColor,
              title: Text(
                "New and Hot",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.cast,
                    size: 28,
                  ),
                )
              ],
              bottom: TabBar(
                  isScrollable: true,
                  labelColor: Colors.black,
                  unselectedLabelColor: white,
                  indicator: BoxDecoration(
                      color: Colors.white, borderRadius: kredius30),
                  tabs: [
                    Tab(
                      text: "🍟 Coming soon",
                    ),
                    Tab(
                      text: "👀 Everyone watching",
                    )
                  ]),
            ),
          ),
          body: TabBarView(
            children: [build_coming_soon(context), build_everyone_watching()],
          )),
    );
  }
}

Widget build_coming_soon(BuildContext context) {
  final sizee = MediaQuery.of(context).size.width;
  return ListView.builder(
    shrinkWrap: true,
    itemCount: 10,
    itemBuilder: (context, index) {
      return CominsoonWidget(sizee: sizee);
    },
  );
}

Widget build_everyone_watching() {
  return Padding(
    padding: const EdgeInsets.only(top: 10, left: 5),
    child : ListView.builder(
      
      itemCount: 10,
      itemBuilder: (context, index) {
      return everyonesWachingWidget();
    },));
}


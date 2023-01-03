import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import 'package:netfilx_app_ui_api/core/colors/const.dart';
import 'package:netfilx_app_ui_api/core/strings.dart';

import 'package:netfilx_app_ui_api/domain/models/model_hot_and_new.dart';
import 'package:netfilx_app_ui_api/infrastruture/HotandNew/hot_and_new_db.dart';

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
            preferredSize: const Size.fromHeight(80),
            child: AppBar(
              backgroundColor: backgroundcColor,
              title: const Text(
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
                  tabs: const [
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

// ignore: non_constant_identifier_names
Widget build_coming_soon(BuildContext context) {
  final sizee = MediaQuery.of(context).size.width;
  return RefreshIndicator(
     onRefresh: ()async{
HotandNewRepoo().hotandnewfetchdata_everyone_is_watching();
        } ,
    child: FutureBuilder<ModelHotAndNew?>(
        future: HotandNewRepoo().hotandnewfetchdata_comingSoon(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            ModelHotAndNew dat = snapshot.data;
  
            return ListView.builder(
              shrinkWrap: true,
              itemCount: dat.results!.length,
              itemBuilder: (context, index) {
                final data = dat.results![index];
  //convert date to month and date===================
                // ignore: no_leading_underscores_for_local_identifiers
                final _date = DateTime.parse(data.releaseDate!.toString());
                // ignore: no_leading_underscores_for_local_identifiers
                final _formateddate = DateFormat.yMMMMd('en_US').format(_date);
  //==========================
                log(data.releaseDate.toString());
                return CominsoonWidget(
                    day: data.releaseDate.toString().split("-")[1],
                    moviename: data.title!,
                    sizee: sizee,
                    image: "$kImageBaseUrl${data.posterPath}",
                    discription: data.overview!,
                    month: _formateddate
                        .split(" ")
                        .first
                        .substring(0, 3)
                        .toUpperCase());
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(strokeWidth: 2),
            );
          }
        }),
  );
}

// ignore: non_constant_identifier_names
Widget build_everyone_watching() {
  return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child:  RefreshIndicator(
        onRefresh: ()async{
HotandNewRepoo().hotandnewfetchdata_everyone_is_watching();
        }  ,
        child: FutureBuilder<ModelHotAndNew?>(
            future: HotandNewRepoo().hotandnewfetchdata_everyone_is_watching(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                ModelHotAndNew dat = snapshot.data;
      
                return ListView.builder(
                  itemCount: dat.results!.length,
                  itemBuilder: (context, index) {
                    final data = dat.results![index];
                    return everyonesWachingWidget(
                        discrption: data.overview.toString(),
                        name: data.name.toString().toUpperCase(),
                        image: data.backdropPath == null
                            ? "$kImageBaseUrl${data.posterPath}"
                            : "$kImageBaseUrl${data.backdropPath}");
                  },
                );
              } else {
                return const Center(
                    child: CircularProgressIndicator(strokeWidth: 3));
              }
            }),
      ));
}

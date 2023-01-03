

import 'package:flutter/material.dart';

import 'package:netfilx_app_ui_api/core/colors/const.dart';
import 'package:netfilx_app_ui_api/core/strings.dart';
import 'package:netfilx_app_ui_api/domain/models/mode_in_search.dart';
import 'package:netfilx_app_ui_api/infrastruture/serch/search_reposetory.dart';

import 'package:netfilx_app_ui_api/presentetion/search/widgets/titile.dart';

 // ignore: non_constant_identifier_names
 final Controller=ScrollController();
class SearchIdelWidget extends StatelessWidget {
    const SearchIdelWidget({super.key});



  @override
  Widget build(BuildContext context) {
    
   
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        hight,
        const titile(text: "Top  10 Searches"),
        hight,
        Expanded(
          child: FutureBuilder<ModelSerarch?>(
              future: SearchRepo().topshearches(1,),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  // ignore: no_leading_underscores_for_local_identifiers
                  ModelSerarch _data = snapshot.data;

                  return ListView.separated(
                    controller:Controller
                   ,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Items(
                            imagename:
                                "$kImageBaseUrl${_data.results![index].posterpath}",
                            moviename: _data.results![index].title == null
                                ?" ${_data.results![index].name}"
                                : '${_data.results![index].title}',
                          ),
                      separatorBuilder: (context, index) => hight,
                      itemCount: 10);
                    
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              }),
        ), 
      
      ],
    );
  }
  

}

// ignore: must_be_immutable
class Items extends StatelessWidget {
  String moviename;
  String imagename;
  Items({super.key, required this.imagename, required this.moviename});

  @override
  Widget build(BuildContext context) {
    final sizer = MediaQuery.of(context).size.width;
    return Row(children: [
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          width: sizer * 0.35,
          height: 70,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imagename))),
        ),
      ),
      Expanded(
          child: Text(
        moviename,
        style: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 2),
      )),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
            backgroundColor: white,
            radius: 23,
            child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 20,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.play_arrow_rounded, color: white)))),
      )
    ]);
  }

  
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netfilx_app_ui_api/core/colors/const.dart';

import 'package:netfilx_app_ui_api/infrastruture/presentetion/search/widgets/titile.dart';

final deme =
    "https://www.shutterstock.com/image-photo/empty-highway-asphalt-road-beautiful-260nw-1516762826.jpg";

class SearchIdelWidget extends StatelessWidget {
  const SearchIdelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        hight,
     titile(text: "Top Searches"),
        hight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => Items(),
              separatorBuilder: (context, index) => hight,
              itemCount: 10),
        )
      ],
    );
  }
}



class Items extends StatelessWidget {
  Items({super.key});

  @override
  Widget build(BuildContext context) {
    final sizer = MediaQuery.of(context).size.width;
    return Row(children: [
      Container(
        width: sizer * 0.35,
        height: 70,
        decoration: BoxDecoration(
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(deme))),
      ),
      const Expanded(
          child: Text(
        " Movie name",
        style: TextStyle(
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
            child: IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow_rounded,color: white)))),
      )
    ]);
  }
}

import 'package:flutter/material.dart';
import 'package:netfilx_app_ui_api/core/colors/const.dart';
import 'package:netfilx_app_ui_api/infrastruture/presentetion/search/widgets/titile.dart';

class MaincardH extends StatelessWidget {
  const MaincardH({
    Key? key,
  }) : super(key: key);

  @override
  Widget build( context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
          height: 250,
          width: 150,
          decoration:  BoxDecoration(
            borderRadius: kredius,
              image: DecorationImage(
                
                  image: NetworkImage(
                      "https://i.pinimg.com/236x/d4/ab/46/d4ab467d3ae2479d6950d61f212fb5e0.jpg"),fit: BoxFit.cover))),
    );
  }
}

class Maintaitilecard extends StatelessWidget {
  final String titiles;
  const Maintaitilecard({
    Key? key, required this.titiles,
  }) : super(key: key);

  @override
  Widget build( context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
      titiles,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
    ),
   
    hight,
    LimitedBox(
      
      maxHeight: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(17, (index) => MaincardH()),
      ),
    ),
        ],
      );
  }
}

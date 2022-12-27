import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netfilx_app_ui_api/core/colors/const.dart';
import 'package:netfilx_app_ui_api/infrastruture/presentetion/search/widgets/titile.dart';

class MaincardH extends StatelessWidget {
  const MaincardH({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
          height: 250,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: kredius,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://i.pinimg.com/236x/d4/ab/46/d4ab467d3ae2479d6950d61f212fb5e0.jpg"),
                  fit: BoxFit.cover))),
    );
  }
}

class Maintaitilecard extends StatelessWidget {
  final String titiles;
  const Maintaitilecard({
    Key? key,
    required this.titiles,
  }) : super(key: key);

  @override
  Widget build(context) {
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

class CardwithNum extends StatelessWidget {
  const CardwithNum({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Stack(
        children: [
          Row(
            children: [
              SizedBox(
                height: 150,
                width: 45,
              ),
              Container(
                  height: 250,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: kredius,
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/7wuKrFvbX7kAIF0ctotARsqayPo.jpg"),
                          fit: BoxFit.cover))),
            ],
          ),
          Positioned(
              left: 10,
              bottom: -20,
              child: BorderedText(
                  strokeColor: white,
                  strokeWidth: 12,
                  child: Text(
                    "${index + 1}",
                    style: TextStyle(
                      fontSize: 130,
                      color: backgroundcColor,
                      decorationColor: Colors.white,fontWeight: FontWeight.bold
                    ),
                  )))
        ],
      ),
    );
  }

}
class iconbtn extends StatelessWidget {
  const iconbtn({
    Key? key, required this.icon, required this.text,
  }) : super(key: key);
final IconData icon;
final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
      Icon(icon,color: Colors.white,),
      Text(text)
    ],
    );
  }
}

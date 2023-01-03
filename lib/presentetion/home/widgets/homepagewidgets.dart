import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netfilx_app_ui_api/core/colors/const.dart';


class MaincardH extends StatelessWidget {
  const MaincardH({
    Key? key,  this.image="$imagecomingsoon"
  }) : super(key: key);
final String image;
  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
          height: 250,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: kredius,
              image:  DecorationImage(
                  image: NetworkImage(
                     image,),
                  fit: BoxFit.cover))),
    );
  }
}

class Maintaitilecard extends StatelessWidget {
  final String titiles;
   Maintaitilecard({
    Key? key,
    required this.num_of_cards,
    required this.titiles,
  
  }) : super(key: key);
  int num_of_cards;
  @override
  Widget build(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titiles,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        hight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(num_of_cards, (index) => const MaincardH()),
          ),
        ),
      ],
    );
  }
}

class CardwithNum extends StatelessWidget {
   CardwithNum({super.key, required this.index,required this.image});
  final int index;
  final image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Stack(
        children: [
          Row(
            children: [
              const SizedBox(
                height: 150,
                width: 45,
              ),
              Container(
                  height: 250,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: kredius,
                      image:  DecorationImage(
                          image: NetworkImage(
                             image),
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
                    style: const TextStyle(
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
// ignore: camel_case_types
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

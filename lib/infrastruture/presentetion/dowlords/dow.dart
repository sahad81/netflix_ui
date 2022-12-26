import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netfilx_app_ui_api/core/colors/const.dart';


class Dowpage extends StatelessWidget {
  const Dowpage({super.key});
  @override
  Widget build(BuildContext context) {
    final List image = [
      "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTxb7A9X-FoM6kcMiKTeoAa92cMutRrAvTqiQYUUGAFktPZbrLM"
          "https://www.themoviedb.org/t/p/w220_and_h330_face/xf9wuDcqlUPWABZNeDKPbZUjWx0.jpg"
          "https://www.themoviedb.org/movie/522444-black-water-the-abyss",
      "https://www.themoviedb.org/movie/131634-the-hunger-games-mockingjay-part-2",
      "https://www.themoviedb.org/tv/1399-game-of-thrones"
    ];
    final image1 =
        "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTxb7A9X-FoM6kcMiKTeoAa92cMutRrAvTqiQYUUGAFktPZbrLM";
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundcColor,
      appBar: AppBar(
        backgroundColor: backgroundcColor,
        title: Text(
          "Downloads",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const _smart_dowloads(),
          ),
          hight,
          const Text("Indruducing Dowloads For You",textAlign: TextAlign.center,style: TextStyle(color: white,fontSize: 24,fontWeight: FontWeight.bold),),
       hight,
          const Text(
              "we will dowload a personalised selection of\n movies and shows for you,so there,s\nalways somthing watch yous\ndivice"
            ,  textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 16,),),
         hight,
          SizedBox(
            width: size.width,
            height: size.width,
           
            child: Stack(
              alignment: Alignment.center,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: size.width * 0.40,
                 backgroundColor: Colors.grey.withOpacity(.5),
                  ),
                ),
                 imagewithcontainer(
                    margin: EdgeInsets.only(left: 170,top: 50),
                    angle: 20,
                    size: Size(size.width *0.35 , size.width*0.55),
                    url:
                        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vNVFt6dtcqnI7hqa6LFBUibuFiw.jpg"),
                 imagewithcontainer(
                 
                   size: Size(size.width*0.35 , size.width*0.55),
                    margin: EdgeInsets.only(right: 170,top: 50),
                    angle: -20,
                    url:
                        "https://www.themoviedb.org/t/p/w220_and_h330_face/xf9wuDcqlUPWABZNeDKPbZUjWx0.jpg"),
                 imagewithcontainer(
                  borderderdious: 10,
                   size: Size(size.width*0.40 , size.width*0.65),
                  margin: EdgeInsets.only(bottom: 50,top: 50),
                  url:
                      "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ryKwNlAfDXu0do6SX9h4G9Si1kG.jpg",
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              color: blue,
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  "SetUp",
                  style: TextStyle(color: Colors.white,fontSize: 20),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              color: white,
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "See What You Can Dowload",
                  style: TextStyle(color: Colors.black,fontSize: 20,),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}

class _smart_dowloads extends StatelessWidget {
  const _smart_dowloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.settings,
          color: white,
        ),
        Text(
          "Smart Downloads",
          style: TextStyle(color: white),
        )
      ],
    );
  }
}

class imagewithcontainer extends StatelessWidget {
  const imagewithcontainer(
      {Key? key, this.angle = 0, required this.margin, required this.url, required this.size, this.borderderdious=10})
      : super(key: key);
  final double angle;
  final EdgeInsets margin;
  final String url;
 final Size size;
 final double? borderderdious;
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 100,
        child: ClipRect(
          child: Container(
         
            width: size.width ,
            height: size.height ,
            decoration: BoxDecoration(
              
              borderRadius: BorderRadius.circular(borderderdious!),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(url)
              
              )
              ,
            ),
          ),
        ),
      ),
    );
  }
}

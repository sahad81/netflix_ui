import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../core/colors/const.dart';

class everyonesWachingWidget extends StatelessWidget {
  const everyonesWachingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        hight,
        Text(
          "FIRNDS",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        hight,
        Text(
          "this hit sitcom the follows the merry misadventures of six 20 somthing pals as they navigate the pitfalls of\nwork,life and love in 1990 manhatten  ",
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        SizedBox(height: 30,),
         Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 200,
                      width: double.infinity,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(imagecomingsoon),
                                      fit: BoxFit.cover)),
                            ),
                                 Positioned(
                  right: 10,
                  bottom: 10
                  
                  ,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.black.withOpacity(0.5),
                    child: Center(
                      child: IconButton(onPressed: () {}, icon: Icon(Icons.volume_off)),
                    ),
                  ),
                ),
                          ],
                        ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
   Column(
        children: [
          hight,
          Icon(Icons.share,color: Colors.white,),
        Text("Share",style: TextStyle(fontSize: 16),)
        ],
      ),
      kwidth,
        kwidth,
       Column(
        children: [
          hight,
          Icon(Icons.add ,color: Colors.white,),
        Text("My List",style: TextStyle(fontSize: 16),)
        ],
      ),
      kwidth,
      kwidth,
       Padding(
         padding: const EdgeInsets.only(right: 20,top: 10),
         child: Column(
          children: [
            

            Icon(Icons.play_arrow,color: Colors.white,),
          Text("Play",style: TextStyle(fontSize: 16),)
          ],
      ),
       )
                    ],
                   )
                      ],
                    )
      ],
    );
  }
}

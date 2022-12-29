

import 'package:flutter/material.dart';
import 'package:netfilx_app_ui_api/core/colors/const.dart';

class vediolistItems extends StatelessWidget {
  final int index;
  const vediolistItems({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.accents[index % Colors.accents.length],
child: 
Align(
  alignment: Alignment.bottomCenter,
  child:   Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30)
    ,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
      children: [
    
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.black.withOpacity(0.5),
              child: Center(
                child: IconButton(onPressed: () {
                
                    
                
                      
                
                    
                
                    }, icon: Icon(Icons.volume_off)),
              ),
            ),
    
    Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: const [
        CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS88aP39AASLdsDvGn9V00vBxx1buFWcwT4cDM1DV01cUYiru6t0nxlmmbMdswV9vp-HVg&usqp=CAU"),
        ),
        hight,
      VedioActionWidget(icon: Icons.emoji_emotions, titile: "LOL"   ),
        VedioActionWidget(icon: Icons.add, titile: "My list"),
          VedioActionWidget(icon: Icons.share, titile: "Share"),
            VedioActionWidget(icon: Icons.play_arrow, titile: "Play"),
            SizedBox(height: 60,)
      ],
      
     
    )
      ],
    
    ),
  ),
)



    );
  }
}class VedioActionWidget extends StatelessWidget {
  final IconData icon;
  final String titile;
  const VedioActionWidget({super.key, required this.icon, required this.titile});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          hight,
          Icon(icon,color: Colors.white,),
        Text(titile,style: TextStyle(fontSize: 16),)
        ],
      ),
    );
  }
}
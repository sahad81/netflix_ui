import 'package:flutter/material.dart';
import 'package:netfilx_app_ui_api/core/colors/const.dart';

import 'package:netfilx_app_ui_api/presentetion/home/widgets/homepagewidgets.dart';

class CominsoonWidget extends StatelessWidget {
  const CominsoonWidget({
    Key? key,
    required this.sizee,
  }) : super(key: key);

  final double sizee;
  


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SingleChildScrollView(
        child: Column(
          
          children: [
            Stack(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                      height: 200,
                      child: Column(children: const [
                        Text("FEB",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.grey)),
                        Text(
                          "11",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                      ]),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 200,
                          width: sizee - 50,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(imagecomingsoon),
                                  fit: BoxFit.cover)),
                        ),
                   
                      ],
                    )
                  ],
                ),
                Positioned(
                  right: 10,
                  bottom: 10
                  
                  ,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.black.withOpacity(0.5),
                    child: Center(
                      child: IconButton(onPressed: () {}, icon: const Icon(Icons.volume_off)),
                    ),
                  ),
                ),
              ],
            ),
          Padding(
            padding: const EdgeInsets.only(left: 50,top: 10),
            child: Column(
        //      mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Row(children: const [
                  Text("TALL GRIL 2",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold)),
                Spacer(),
                iconbtn(icon: Icons.notifications, text: "remaind me"),
                SizedBox(width: 16,),
                iconbtn(icon: Icons.info, text: "info"),
                SizedBox(width: 20,),
            
              ],
              ),
              hight,
              hight,
              const Text("TALL GILE 2",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
               hight,
              const Text("landing the lead in the school musical is a\ndream come true  for jodi,undil the pressure\nsends her confidence -- and a relationship--\ninto a tailspin ",style: TextStyle(color: Colors.grey,fontSize: 16),)
            
              ],
            ),
          )
          ],
          
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:netfilx_app_ui_api/core/colors/const.dart';

import 'package:netfilx_app_ui_api/presentetion/home/widgets/homepagewidgets.dart';

class CominsoonWidget extends StatelessWidget {
   const CominsoonWidget({
    Key? key,
    required this.day,
    
    required this.moviename,
    required this.sizee, required this.image, required this.discription, required this.month,
  }) : super(key: key);

  final double sizee;
  
 final  String moviename;
 final String image;
 final String discription;
 final String day;
 final String month;
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
                      child: Column(children:  [
                        Text(month,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.grey)),
                        Text(
                          day,
                          style: const TextStyle(
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
                          decoration:  BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(image),
                                  fit: BoxFit.cover
                                  )),
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
              Row(children:  [
                  Expanded(
                    child: Text(moviename,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold)),
                  ),
           
                const iconbtn(icon: Icons.notifications, text: "remaind me"),
                const SizedBox(width: 16,),
                const iconbtn(icon: Icons.info, text: "info"),
                const SizedBox(width: 20,),
            
              ],
              ),
              hight,
              hight,
               Text(moviename,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
               hight,
               Text(discription,style: TextStyle(color: Colors.grey,fontSize: 16),)
            
              ],
            ),
          )
          ],
          
        ),
      ),
    );
  }
}
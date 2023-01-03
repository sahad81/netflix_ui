import 'package:flutter/material.dart';

import 'package:netfilx_app_ui_api/core/colors/const.dart';
import 'package:netfilx_app_ui_api/core/strings.dart';
import 'package:netfilx_app_ui_api/domain/models/dowloadsmodel.dart';

import 'package:netfilx_app_ui_api/infrastruture/downloadsDb/downloads_repository.dart';

// ignore: camel_case_types
class vediolistItems extends StatelessWidget {
  final int index;
  const vediolistItems({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<TrandingModel?>(
      future: Dowrepo().fetchimage("1"),
      builder: (context, snapshot) {
     final   data=snapshot.data;
    if (snapshot.hasData) {
        return SizedBox(
      
        child: Container(
         
            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage( "$kImageBaseUrl${data!.results![index].posterpath}"),fit: BoxFit.cover)),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.black.withOpacity(0.5),
                      child: Center(
                        child: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.volume_off)),
                      ),
                    ),
                
                     Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:  [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                               "$kImageBaseUrl${data.results![index].backdropPath}"),
                          ),
                          hight,
                          const VedioActionWidget(
                              icon: Icons.emoji_emotions, titile: "LOL"),
                          const VedioActionWidget(icon: Icons.add, titile: "My list"),
                          const VedioActionWidget(icon: Icons.share, titile: "Share"),
                          const VedioActionWidget(icon: Icons.play_arrow, titile: "Play"),
                          const SizedBox(
                            height: 60,
                          )
                        ],
                                )
                      
               
                      
                    
                  ],
                ),
              ),
            )),
      );
      
    } else {
    return  const Center(child: CircularProgressIndicator());
    }  
    
      }
    );
  }
}

class VedioActionWidget extends StatelessWidget {
  final IconData icon;
  final String titile;
  const VedioActionWidget(
      {super.key, required this.icon, required this.titile});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        hight,
        Icon(
          icon,
          color: Colors.white,
        ),
        Text(
          titile,
          style: const TextStyle(fontSize: 16),
        )
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netfilx_app_ui_api/core/colors/const.dart';
import 'package:netfilx_app_ui_api/infrastruture/presentetion/search/widgets/titile.dart';
final urlimage="https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ryKwNlAfDXu0do6SX9h4G9Si1kG.jpg";
class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        hight,
        titile(text: "Movies and Tv"),
        hight,
        Expanded(child: 
        GridView.count(
          mainAxisSpacing: 5,
          childAspectRatio: 1/1.5,
          crossAxisSpacing: 5,
          shrinkWrap: true,
          crossAxisCount: 3,
children: 
  List.generate(
    20, (index) {
    return  Maincard();
  })

        
        ))
      ],
    );
  }
}
class Maincard extends StatelessWidget {
   Maincard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
decoration: BoxDecoration(
  image: DecorationImage(image: NetworkImage(urlimage)
  ),
  borderRadius: BorderRadius.circular(12)
),

    );
  }
}
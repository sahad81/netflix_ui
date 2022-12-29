import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netfilx_app_ui_api/presentetion/search/widgets/search_result_widget,.dart';




class Searchsreen extends StatelessWidget {
  const Searchsreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      
       SafeArea(child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

                       
                           TextField(
                            
                            onChanged: (value) {
                           
                              
                            },
                            style: const TextStyle(),
                            textInputAction: TextInputAction.search,
                            onSubmitted: (value) {
                              
                             
                            
                            },
                            decoration: InputDecoration(
                                  filled: true, //<-- SEE HERE
      fillColor: Colors.grey.withOpacity(.4),
                              suffixIcon: Icon(CupertinoIcons.xmark_circle_fill),
                                prefixIcon: const Icon(Icons.search,color:Colors.grey,),
                                hintText: "search",
                                hintStyle: const TextStyle(color: Colors.white),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                )),
                          ),


          const Expanded(child: 
          SearchResult()
         // SearchIdelWidget()
          )
        ],
      ),
    ))
      );
  }
}
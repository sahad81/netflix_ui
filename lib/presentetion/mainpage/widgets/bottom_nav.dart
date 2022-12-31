import 'package:flutter/material.dart';

import 'package:netfilx_app_ui_api/core/colors/const.dart';

ValueNotifier<int>indexnotifire=ValueNotifier(0);

class BottomNavigationwidget extends StatelessWidget {
   const BottomNavigationwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: indexnotifire, builder:(context,int newtab,_) {
   return BottomNavigationBar(
      currentIndex: newtab
,
onTap: (value) {
indexnotifire.value=value;
},
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: backgroundcColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.red,
      selectedIconTheme: const IconThemeData(
        color: Colors.grey
      ),
      items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.collections), label: "New & hot"),
      BottomNavigationBarItem(icon: Icon(Icons.emoji_emotions), label: "Fast Laughs"),
      BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
      BottomNavigationBarItem(icon: Icon(Icons.download), label: "dowloads"),
    ]);
      
    },);
  }
}

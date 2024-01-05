
import 'package:expert_mind/view/screen/home/home.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../../core/shared/color.dart';
import '../../../core/shared/theming/text_style.dart';
class LayoutHome extends StatelessWidget {
  const LayoutHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    return Scaffold(
      // backgroundColor: whiteColor,
      appBar: AppBar(
        foregroundColor: ProjectColors.mainColor,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsetsDirectional.only(start: 15),
          child: CircleAvatar(),
        ),
        title: Text(
          'علي نبيل' ,
          style: TextStyles.font18BlackW500,
          ),
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 15),
            child: Icon(Icons.exit_to_app_rounded),
          )
        ],
      ),
      body: Home(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset.zero),
            ]
        ),
        child: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) { _currentIndex = i;}
              ,
          items: [
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: ProjectColors.mainColor,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.search),
              title: Text("Search"),
              selectedColor: ProjectColors.mainColor,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.add_location),
              title: Text("Laction"),
              selectedColor: ProjectColors.mainColor,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.settings),
              title: Text("Settings"),
              selectedColor: ProjectColors.mainColor,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:expert_mind/view/screen/home/home.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../../core/shared/color.dart';
import '../../../core/shared/theming/text_style.dart';
import '../../widget/courses_widget.dart';
import '../courses/courses.dart';

class LayoutHome extends StatelessWidget {
   LayoutHome({Key? key}) : super(key: key);
   int currentIndex = 0;
   List Screen =[
     Home(),
     Courses(),
     Home(),
     Home(),
     Home(),
   ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBarLayout(),
        body: Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 15 ,vertical: 5),
          child: Screen[currentIndex],
        )
        ,
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black.withOpacity(.1),
                )
              ],
            ),
              child: SafeArea(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                      child: GNav(
                        onTabChange: (i){
                          currentIndex = i;
                        },
                        rippleColor: Colors.grey,
                        hoverColor: Colors.grey,
                        haptic: true,
                        tabBorderRadius: 15,
                        tabActiveBorder: Border.all(color: Colors.black, width: 1),
                        tabBorder: Border.all(color: Colors.grey, width: 1),
                        curve: Curves.easeOutExpo,
                        duration: Duration(milliseconds: 900),
                        gap: 8,
                        color: Colors.black,
                        activeColor: ProjectColors.mainColor,
                        iconSize: 24,
                        tabBackgroundColor: ProjectColors.mainColor.withOpacity(0.1),
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        tabs: [
                          GButton(
                            icon: Icons.home,
                            text: 'ألرئسية',
                          ),
                          GButton(
                            icon: Icons.menu_book_outlined,
                            text: 'الكورسات',
                          ),
                          GButton(
                            icon: Icons.chat,
                            text: 'الدردشات',
                          ),
                          GButton(
                            icon: Icons.apps,
                            text: 'المشاريع',
                          ),
                          GButton(
                            icon: Icons.account_circle,
                            text: 'الحساب',
                          ),
                        ]
                      ),
                  )
              )
        )
    );
  }

  AppBar AppBarLayout() {
    return AppBar(
        foregroundColor: ProjectColors.mainColor,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsetsDirectional.only(start: 15),
          child: CircleAvatar(),
        ),
        title: Text(
          'علي نبيل',
          style: TextStyles.font18BlackW500,
        ),
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 15),
            child: Icon(Icons.exit_to_app_rounded),
          )
        ],
      );
  }
}

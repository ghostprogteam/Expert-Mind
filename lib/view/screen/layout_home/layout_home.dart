import 'package:expert_mind/view/screen/chat/chat_inbox.dart';
import 'package:expert_mind/view/screen/home/home.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../../core/shared/color.dart';
import '../courses/courses.dart';

class LayoutHome extends StatefulWidget {
  LayoutHome({Key? key}) : super(key: key);

  @override
  State<LayoutHome> createState() => _LayoutHomeState();
}

class _LayoutHomeState extends State<LayoutHome> {
  int currentIndex = 0;

  List Screen = [
    Home(),
    Courses(),
    ChatInboxScreen(),
    Home(),
    Home(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Screen[currentIndex],
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                  onTabChange: (i) {
                    setState(() {
                      currentIndex = i;
                    });
                  },
                  rippleColor: Colors.grey,
                  hoverColor: Colors.grey,
                  haptic: true,
                  tabBorderRadius: 15,
                  // tabActiveBorder: Border.all(color: Colors.black, width: 1),
                  // tabBorder: Border.all(color: Colors.grey, width: 1),
                  curve: Curves.easeInOut,
                  duration: Duration(milliseconds: 900),
                  gap: 8,
                  color: Colors.black87,
                  activeColor: ProjectColors.mainColor,
                  iconSize: 24,
                  tabBackgroundColor: ProjectColors.mainColor.withOpacity(0.1),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  tabs: [
                    GButton(
                      icon: Icons.home,
                      text: 'ألرئيسية',
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
                      text: 'البروفايل',
                    ),
                  ]),
            ))));
  }
}

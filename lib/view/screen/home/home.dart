import 'package:carousel_slider/carousel_slider.dart';
import 'package:expert_mind/core/shared/color.dart';
import 'package:flutter/material.dart';

import '../../../core/shared/theming/text_style.dart';
import '../../widget/home_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List listProject=[
      {
       "name" : "مشروع توصيل طلبات مطعم" ,
        "image": "assets/images/AppFood.jpg"
      },
      {
        "name" : "مشروع أدارة الملحظات" ,
        "image": "assets/images/AppNote.jpg"
      }
    ];
    List<Widget> listProjectWidget=[
      for (int i = 0; i < listProject.length; i++) ...[
        TopSclorProjectHome(listProject: listProject, i: i)
      ],
    ];
    return Scaffold(
      body: Container(

        child: Column(
          children: [
            SearchInHomePage(),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView(
                children: [
                  PackageSclorWithDetails(listProjectWidget: listProjectWidget),
                  SizedBox(height: 15,),
                  TeacherSclorWithDetails(),
                  SizedBox(
                    height: 10,
                  ),
                  CoursesSclorWithDetailsWithCategories(),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


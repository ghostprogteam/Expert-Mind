import 'package:flutter/material.dart';
import '../../widget/courses_widget.dart';

class Courses extends StatelessWidget {
  const Courses({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SearchInHomePage(),
          SizedBox(
            height: 15,
          ),
          WidgetCategoriesCourses(),
          SizedBox(height: 15,),
          PageCoursesSclorWithCategories(),
        ],
      ),
    );
  }
}

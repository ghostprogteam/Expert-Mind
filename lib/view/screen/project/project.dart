
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../core/shared/color.dart';
import '../../../core/shared/theming/text_style.dart';
import '../../../model/home/list_project_model.dart';

class Project extends StatelessWidget {
  const Project({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      ListView.separated(
          itemBuilder: (context ,index)=> Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ,
                CarouselSlider(
                  options: CarouselOptions(height: 210),
                  items: listProjectWidgetPageProject
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Text('${listProject[index]["name"]}' ,style: TextStyles.font18mainColorBold, maxLines: 1,),
                      SizedBox(height: 5,),
                      Text('${listProject[index]["details"]}',
                        style: TextStyles.font14GreyW300,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(padding: EdgeInsetsDirectional.only(bottom: 8), child: Icon(Icons.star ,color: ProjectColors.amberColor, size: 25,)),
                              SizedBox(width: 5,),
                              Center(child: Text('${listProject[index]["start"]}' , style: TextStyles.font18GreyW400  ,textAlign: TextAlign.center,)),
                            ],
                          ),
                          Text("50.00 \$" ,style: TextStyles.font18mainColorBold,),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          separatorBuilder: (context ,index)=> SizedBox(height: 15,),
          itemCount: listProject.length)

    );
  }
}


import 'package:expert_mind/core/shared/color.dart';
import 'package:flutter/material.dart';

import '../../../core/shared/theming/text_style.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsetsDirectional.all(15),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: ProjectColors.greyColors200,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  // BoxShadow(
                  //     color: Colors.grey.withOpacity(0.3),
                  //     spreadRadius: 2,
                  //     blurRadius: 3,
                  //     offset: Offset.zero),
                ],
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  suffixIcon: Icon(Icons.change_circle_outlined,color: ProjectColors.mainColor,),
                  hintText: 'بحث',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 5, color: Colors.red),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                    BorderSide(width: 0, color: Colors.transparent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                    BorderSide(width: 0, color: Colors.transparent),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("كبار المرشدين" ,style: TextStyles.font18BlackW500,),
                    Text('رؤية الجميع' ,style: TextStyles.font18mainColorW100,)
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 100,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context ,index)=>   Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('أحمد' ,style: TextStyles.font20BlackW100, )
                        ],
                      ),
                      separatorBuilder: (context ,index)=> SizedBox(width: 10,),
                      itemCount: 10),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("ألدورات الاكثر شعبية" ,style: TextStyles.font18BlackW500,),
                    Text('رؤية الجميع' ,style: TextStyles.font18mainColorW100,)
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 30,
                  child: ListView.separated(
                    shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context ,index)=>  Container(
                        alignment: Alignment.center,
                        padding: EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 1),
                        child: Row(
                          children: [
                            Icon(Icons.hotel_class ,size: 13, color:ProjectColors.amberColor,),
                            Text('دورات مجانية',textAlign: TextAlign.center,),
                          ],
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: ProjectColors.mainColor,
                                width: 2
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                      ),
                      separatorBuilder: (context ,index)=> SizedBox(width: 10,),
                      itemCount: 10),
                )

              ],
            ),
            Container(
              child: Row(
                children: [
                  Image.asset('assets/images/FigmaCourses.jpg')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

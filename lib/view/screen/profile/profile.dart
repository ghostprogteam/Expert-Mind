import 'package:expert_mind/core/shared/color.dart';
import 'package:expert_mind/core/shared/theming/text_style.dart';
import 'package:expert_mind/view/screen/profile/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: ProjectColors.mainColor.withOpacity(0.3),
                      child: Icon(
                        Icons.person_2_rounded,
                        color: ProjectColors.mainColor,
                        // size: 40,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 5,
                      child: Container(
                        // height: 25,
                        // width: 25,
                        padding: EdgeInsetsDirectional.all(5),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: ProjectColors.mainColor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: ProjectColors.greyColors200,
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.edit,
                          size: 20,
                          color: ProjectColors.whiteColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'اسماعيل العكيشي',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  'esmaeel@gmail.com',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: ProjectColors.greyColor,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: ProjectColors.greyColors200,
            indent: 30,
            endIndent: 30,
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Get.to(EditProfileScreen());
                  },
                  leading: const Icon(
                    Icons.person_2_rounded,
                  ),
                  title: const Text(
                    'تعديل الملف الشخصي',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    textDirection: TextDirection.ltr,
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 5,
              ),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}

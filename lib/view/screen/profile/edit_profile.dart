import 'package:flutter/material.dart';

import '../../../core/shared/color.dart';
import '../../../core/shared/theming/text_style.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "تعديل البروفيل",
            style: TextStyles.font16BlackBold,
          ),
          foregroundColor: ProjectColors.blackColor,
        ),
        body: Container(
          padding:
              EdgeInsetsDirectional.symmetric(horizontal: 15, vertical: 10),
          child: ListView(
            children: [
              myTextFormFieldInProfile(
                  hintText: "الاسم الرباعي",
                  prefix: Icon(
                    Icons.title,
                  ),
                  validator: (value) {}),
              myTextFormFieldInProfile(
                  hintText: "اللقب",
                  prefix: Icon(
                    Icons.title,
                  ),
                  validator: (value) {}),
              myTextFormFieldInProfile(
                  hintText: "تاريخ الميلاد ",
                  keyboardType: TextInputType.datetime,
                  readOnly: true,
                  prefix: Icon(
                    Icons.date_range_outlined,
                  ),
                  validator: (value) {}),
              myTextFormFieldInProfile(
                  hintText: "البريد الالكتروني",
                  keyboardType: TextInputType.emailAddress,
                  prefix: Icon(
                    Icons.email_outlined,
                  ),
                  validator: (value) {}),
              myTextFormFieldInProfile(
                  hintText: "الدولة",
                  prefix: Icon(
                    Icons.location_on_outlined,
                  ),
                  validator: (value) {}),
              myTextFormFieldInProfile(
                  keyboardType: TextInputType.phone,
                  hintText: "رقم الجوال",
                  prefix: Icon(
                    Icons.phone,
                  ),
                  validator: (value) {}),
              myTextFormFieldInProfile(
                  hintText: " الجنس",
                  prefix: Icon(
                    Icons.male_outlined,
                  ),
                  validator: (value) {}),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('حفظ التعديل'),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              )
            ],
          ),
        ));
  }

  myTextFormFieldInProfile(
      {TextInputType? keyboardType = TextInputType.text,
      required hintText,
      TextEditingController? controller,
      required Widget? prefix,
      required String? Function(String?)? validator,
      void Function()? onTap,
      bool readOnly = false}) {
    return Column(
      children: [
        TextFormField(
          readOnly: readOnly,
          keyboardType: keyboardType,
          validator: validator,
          onTap: onTap,
          controller: controller,
          style: TextStyle(
            fontSize: 16,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: prefix,
            hintStyle: TextStyle(
              fontSize: 16,
              color: ProjectColors.greyColor,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: ProjectColors.greyColors200,
            contentPadding: EdgeInsetsDirectional.all(20),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

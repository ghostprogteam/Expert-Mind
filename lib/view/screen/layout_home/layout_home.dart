
import 'package:flutter/material.dart';

import '../../../core/shared/color.dart';
import '../../../core/shared/theming/text_style.dart';
class LayoutHome extends StatelessWidget {
  const LayoutHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        foregroundColor: mainColor,
        backgroundColor:  whiteColor,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsetsDirectional.only(start: 12),
          child: CircleAvatar(),
        ),
        title: Text(
          'علي نبيل' ,
          style: TextStyles.font18BlackW500,
          ),
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 12),
            child: Icon(Icons.exit_to_app_rounded),
          )
        ],
      ),

    );
  }
}

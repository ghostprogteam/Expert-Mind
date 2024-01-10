import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:expert_mind/core/shared/color.dart';
import 'package:expert_mind/core/shared/theming/text_style.dart';
import 'package:expert_mind/view/screen/chat/chat.dart';
import 'package:expert_mind/view/widget/rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

myAwesomeDialog({
  required context,
  required title,
  required desc,
}) {
  return AwesomeDialog(
    context: context,
    animType: AnimType.scale,
    customHeader: CircleAvatar(
      radius: 100,
      backgroundColor: ProjectColors.mainColor,
      child: Icon(
        Icons.check_circle_outline_outlined,
        size: 60,
        color: ProjectColors.whiteColor,
      ),
    ),
    headerAnimationLoop: true,
    dialogType: DialogType.success,
    titleTextStyle: TextStyle(
      color: ProjectColors.mainColor,
    ),
    desc: desc,
    btnOkOnPress: () {},
    btnOkColor: ProjectColors.mainColor,
    padding: EdgeInsetsDirectional.all(20),
    body: Column(
      children: [
        Text(
          title,
          style: TextStyles.font18mainColorBold,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          desc,
          textAlign: TextAlign.center,
          style: TextStyles.font14BlackW500,
        ),
        SizedBox(
          height: 20,
        ),
        myRatingStars(),
      ],
    ),
    btnOkText: 'موافق',
    onDismissCallback: (type) {},
  ).show();
}

myIconButton({
  required void Function()? onPressed,
  required Widget icon,
}) {
  return IconButton(
    onPressed: onPressed,
    icon: icon,
  );
}

myChatAvatarInChatScreens({
  required image,
  required strokeWidth,
  required imageWidth,
}) {
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
        width: strokeWidth.toDouble(),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: ProjectColors.amberColor,
            width: 3,
          ),
        ),
      ),
      Container(
        width: imageWidth.toDouble(),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        // padding: EdgeInsetsDirectional.all(5),
        decoration: BoxDecoration(
          color: ProjectColors.mainColor,
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          image,
          fit: BoxFit.fill,
        ),
      ),
    ],
  );
}

myListTileItem({
  required index,
  required String image,
  required title,
  required subtitle,
  required date,
  required notifiCount,
}) {
  return ListTile(
    onTap: () {
      Get.to(() => ChatScreen(
            index: index,
          ));
    },
    leading: myChatAvatarInChatScreens(
      image: image,
      strokeWidth: 65,
      imageWidth: 45,
    ),
    title: SizedBox(
      height: 30,
      child: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyles.font14BlackBold,
      ),
    ),
    subtitle: Text(
      subtitle,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyles.font14GreyW300,
    ),
    trailing: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 23,
          height: 23,
          alignment: AlignmentDirectional.center,
          padding: EdgeInsetsDirectional.all(2),
          decoration: BoxDecoration(
            color: ProjectColors.mainColor,
            shape: BoxShape.circle,
          ),
          child: Text(
            notifiCount,
            textAlign: TextAlign.center,
            style: TextStyles.font11WhiteW300,
          ),
        ),
        Text(
          date,
          style: TextStyles.font11GreyW300,
        )
      ],
    ),
  );
}

myListViewInChatInbox({
  required Widget? Function(BuildContext, int) itemBuilder,
  required itemCount,
  required separator,
}) {
  return ListView.separated(
    itemBuilder: itemBuilder,
    separatorBuilder: (ctx, index) => separator,
    itemCount: itemCount,
  );
}

myChatMessage({
  required message,
  // required textAlign,
  required txtStyle,
}) {
  return Container(
    margin: txtStyle == TextStyles.font14WhiteW500
        ? EdgeInsetsDirectional.only(
            end: 100,
            bottom: 10,
          )
        : EdgeInsetsDirectional.only(
            start: 100,
            bottom: 10,
          ),
    padding: EdgeInsetsDirectional.symmetric(
      vertical: 10,
      horizontal: 15,
    ),
    alignment: AlignmentDirectional.centerStart,
    decoration: BoxDecoration(
      borderRadius: txtStyle == TextStyles.font14WhiteW500
          ? BorderRadiusDirectional.only(
              topEnd: Radius.circular(10),
              bottomEnd: Radius.circular(10),
              bottomStart: Radius.circular(10),
            )
          : BorderRadiusDirectional.only(
              topStart: Radius.circular(10),
              bottomEnd: Radius.circular(10),
              bottomStart: Radius.circular(10),
            ),
      gradient: LinearGradient(
        colors: txtStyle == TextStyles.font14WhiteW500
            ? [
                ProjectColors.mainColor,
                ProjectColors.mainColor.withOpacity(0.8),
              ]
            : [
                ProjectColors.greyColors200,
                ProjectColors.greyColors200,
              ],
        begin: AlignmentDirectional.topStart,
        end: AlignmentDirectional.bottomEnd,
      ),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Text(
            message,
            style: txtStyle,
            textAlign: TextAlign.start,
          ),
        ),
        Text(
          DateFormat('hh:mm').format(DateTime.now()),
          style: txtStyle == TextStyles.font14WhiteW500
              ? TextStyles.font11WhiteW300
              : TextStyles.font11GreyW300,
        ),
      ],
    ),
  );
}

myDateOfMessage({
  required date,
}) {
  return Container(
    width: 100,
    margin: EdgeInsetsDirectional.only(
      bottom: 20,
    ),
    alignment: AlignmentDirectional.center,
    padding: EdgeInsetsDirectional.symmetric(
      vertical: 3,
      horizontal: 15,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: ProjectColors.greyColors200,
    ),
    child: Text(
      date.toString(),
      style: TextStyles.font14GreyW300,
    ),
  );
}

myTextFormFieldInChat({
  required hintText,
}) {
  return TextFormField(
    style: TextStyle(
      fontSize: 16,
    ),
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
        fontSize: 14,
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
      contentPadding: EdgeInsetsDirectional.all(15),
    ),
  );
}

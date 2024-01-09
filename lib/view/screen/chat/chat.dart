import 'package:expert_mind/core/shared/color.dart';
import 'package:expert_mind/core/shared/theming/text_style.dart';
import 'package:expert_mind/view/widget/chat_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: myIconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
          ),
        ),
        title: Text(
          'حسام خالد الزريقي',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyles.font18BlackBold,
        ),
        actions: [
          myIconButton(
            onPressed: () {},
            icon: Icon(
              Icons.call,
            ),
          ),
          myIconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_rounded,
            ),
          ),
        ],
      ),
      body: Container(
        // alignment: Alignment.center,
        width: double.infinity,
        padding: EdgeInsetsDirectional.symmetric(
          vertical: 5,
          horizontal: 10,
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    myDateOfMessage(
                      date: 'اليوم',
                    ),
                    myChatMessage(
                      message: 'مرحبا بك، من فضلك أخبرنا كيف يمكننا مساعدتك.',
                      txtStyle: TextStyles.font14WhiteW500,
                    ),
                    myChatMessage(
                      message: 'كيف حالك؟ هل أنت بخير؟',
                     
                      txtStyle: TextStyles.font14WhiteW500,
                    ),
                    myChatMessage(
                      message: 'ما هي الخدمات التي تقومون بتقديمها في شركتكم؟',
                      txtStyle: TextStyles.font14BlackW500,
                    ),
                    myChatMessage(
                      message: 'نعم، انا بخير',
                      txtStyle: TextStyles.font14BlackW500,
                    ),
                    myChatMessage(
                      message: 'شكرا لك ...',
                      txtStyle: TextStyles.font14WhiteW500,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(15),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Form(
                      child: myTextFormFieldInChat(
                        hintText: 'اكتب رسالتك هنا',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 50,
                    height: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ProjectColors.mainColor,
                    ),
                    child: myIconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.send,
                        color: ProjectColors.whiteColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

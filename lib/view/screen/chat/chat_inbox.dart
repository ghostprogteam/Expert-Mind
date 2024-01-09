import 'package:expert_mind/core/shared/color.dart';
import 'package:expert_mind/core/shared/theming/text_style.dart';
import 'package:expert_mind/view/widget/chat_widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChatInboxScreen extends StatelessWidget {
  ChatInboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Container(
          margin: EdgeInsetsDirectional.all(10),
          padding: EdgeInsetsDirectional.all(5),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ProjectColors.mainColor,
          ),
          child: Image.asset(
            'assets/images/app-icon-white.png',
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          'صندوق المحادثة',
          style: TextStyles.font18BlackBold,
        ),
        actions: [
          myIconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_rounded,
            ),
          ),
          myIconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_rounded,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: ProjectColors.mainColor,
        child: Icon(
          Icons.chat_outlined,
          color: ProjectColors.whiteColor,
        ),
      ),
      body: Container(
        padding: EdgeInsetsDirectional.symmetric(
          vertical: 5,
        ),
        child: myListViewInChatInbox(
          itemBuilder: (ctx, index) => myListTileItem(
            index: index,
            image: 'assets/images/raymond.jpg',
            title: 'حسام خالد الزريقي',
            subtitle: 'مرحبا بك، من فضلك أخبرنا كيف يمكننا مساعدتك.',
            date: DateFormat('yyyy-M-d h:mm').format(DateTime.now()),
            notifiCount: '10',
          ),
          itemCount: 10,
          separator: SizedBox(height: 3),
        ),
      ),
    );
  }
}

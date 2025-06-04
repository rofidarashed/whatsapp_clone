import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/widget/chat_label_custom.dart';
import 'package:whatsapp_clone/core/widget/chat_info_list.dart';

class ChatLabelsListWidget extends StatelessWidget {
  const ChatLabelsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: chatInfoList.length,
      itemBuilder: (context, index) {
        return ChatlabelCustom(chatBubbleModel: chatInfoList[index]);
      },
    );
  }
}

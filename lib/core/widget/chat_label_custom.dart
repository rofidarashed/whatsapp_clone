import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/models/chat_labels_model.dart';
import 'package:whatsapp_clone/core/style/text_styles.dart';
import 'package:whatsapp_clone/feature/home/view/screens/chat_screen.dart';

class ChatlabelCustom extends StatelessWidget {
  final ChatLabelseModel chatBubbleModel;

  const ChatlabelCustom({super.key, required this.chatBubbleModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const ChatScreen()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: chatBubbleModel.imagePath,
                radius: 25,
              ),
              Expanded(
                child: ListTile(
                  minLeadingWidth: 30,
                  title: Text(
                    chatBubbleModel.userName,
                    maxLines: 1,
                    style: chatName,
                  ),
                  subtitle: Text(
                    chatBubbleModel.userMessage,
                    maxLines: 1,
                    style: grayText,
                  ),
                ),
              ),

              Text(chatBubbleModel.lastDate, style: dateGray),
            ],
          ),
        ),
      ),
    );
  }
}

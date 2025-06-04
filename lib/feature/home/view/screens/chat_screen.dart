import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/models/chat_message_model.dart';
import 'package:whatsapp_clone/core/style/colors.dart';
import 'package:whatsapp_clone/core/widget/chat_model_list.dart';
import 'package:whatsapp_clone/feature/home/view/widgets/app_bar_chat.dart';
import 'package:whatsapp_clone/feature/home/view/widgets/chat_bubble_list.dart';
import 'package:whatsapp_clone/feature/home/view/widgets/message_input.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  void _newInput(String text) {
    setState(() {
      messages.add(
        ChatMessageModel(messageContent: text, messageType: "sender"),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gray,
      appBar: appBarChat(),
      body: Column(
        children: [
          Expanded(child: chatBubbleList()),
          MessageInput(onMessageInput: _newInput),
        ],
      ),
    );
  }
}

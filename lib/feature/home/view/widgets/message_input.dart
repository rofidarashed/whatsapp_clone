import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/style/colors.dart';

class MessageInput extends StatefulWidget {
  final Function(String) onMessageInput;
  const MessageInput({super.key, required this.onMessageInput});

  @override
  State<MessageInput> createState() => _MessageInputState();
}

class _MessageInputState extends State<MessageInput> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: chatGray,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      height: 60,
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.emoji_emotions_outlined),
            onPressed: () {},
          ),
          Expanded(
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: "Type a message",
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(icon: Icon(Icons.attach_file), onPressed: () {}),
          IconButton(icon: Icon(Icons.camera_alt), onPressed: () {}),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              if (_textController.text.isNotEmpty) {
                widget.onMessageInput(_textController.text);
                  _textController.clear();
              }
            },
          ),
        ],
      ),
    );
  }
   @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/style/colors.dart';
import 'package:whatsapp_clone/core/style/text_styles.dart';
import 'package:whatsapp_clone/core/widget/chat_model_list.dart';

ListView chatBubbleList() {
  return ListView.builder(
    itemCount: messages.length,
    padding: EdgeInsets.all(10),
    itemBuilder: (context, index) {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 4),
        child: Column(
          crossAxisAlignment:
              messages[index].messageType == "sender"
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,
          children: [
            Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.7,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomLeft:
                      messages[index].messageType == "sender"
                          ? Radius.circular(8)
                          : Radius.circular(0),
                  bottomRight:
                      messages[index].messageType == "sender"
                          ? Radius.circular(0)
                          : Radius.circular(8),
                ),
                color:
                    messages[index].messageType == "sender"
                        ? recieveColor
                        : chatGray,
              ),
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    messages[index].messageContent,
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("10:30 AM", style: dateGrayChat),
                      if (messages[index].messageType == "sender")
                        SizedBox(width: 4),
                      if (messages[index].messageType == "sender")
                        Icon(Icons.done_all, size: 14, color: Colors.blue),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}

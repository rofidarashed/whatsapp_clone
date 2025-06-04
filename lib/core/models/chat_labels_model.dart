import 'package:flutter/material.dart';

class ChatLabelseModel {
  final String userName;
  final String userMessage;
  final String lastDate;
  final ImageProvider imagePath;

  ChatLabelseModel({
    required this.userMessage,
    required this.lastDate,
    required this.imagePath,
    required this.userName,
  });
}

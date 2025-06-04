import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/style/app_text.dart';
import 'package:whatsapp_clone/core/style/colors.dart';
import 'package:whatsapp_clone/core/style/text_styles.dart';

Widget searchHome() {
  return Container(
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      color: search,
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
        children: [
          Icon(Icons.search, color: gray),
          SizedBox(width: 10),
          Text(searchText, style: grayText),
        ],
      ),
    ),
  );
}

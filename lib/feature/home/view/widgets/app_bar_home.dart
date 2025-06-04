import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/style/app_text.dart';
import 'package:whatsapp_clone/core/style/colors.dart';
import 'package:whatsapp_clone/core/style/text_styles.dart';
import 'package:whatsapp_clone/feature/home/view/widgets/popup_menu_home.dart';

AppBar appBarHome() {
  return AppBar(
    backgroundColor: black,
    leadingWidth: double.infinity,
    leading: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Text(whatsApp, style: white30),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.photo_camera_outlined, color: white),
          ),
          popupMenuButtonHome(),
        ],
      ),
    ),
  );
}

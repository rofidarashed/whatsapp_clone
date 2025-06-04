import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/style/app_text.dart';
import 'package:whatsapp_clone/core/style/assets.dart';
import 'package:whatsapp_clone/core/style/colors.dart';
import 'package:whatsapp_clone/core/style/text_styles.dart';
import 'package:whatsapp_clone/core/widget/back_button_build.dart';
import 'package:whatsapp_clone/feature/home/view/widgets/popup_menu_home.dart';

AppBar appBarChat() {
  return AppBar(
    backgroundColor: black,
    leadingWidth: double.infinity,
    leading: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Builder(builder:(context)=> buildBackButton(context), ),
          
          CircleAvatar(backgroundImage: profile, radius: 20),
          Text("  $sender", style: white16),
          Spacer(),
          IconButton(icon: Icon(Icons.videocam), onPressed: () {}),
          IconButton(icon: Icon(Icons.call), onPressed: () {}),
          popupMenuButtonHome(),
        ],
      ),
    ),
  );
}

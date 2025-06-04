import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/style/app_text.dart';
import 'package:whatsapp_clone/core/style/colors.dart';
import 'package:whatsapp_clone/core/style/text_styles.dart';
import 'package:whatsapp_clone/feature/home/view/widgets/pop_up_items.dart';

PopupMenuButton popupMenuButtonHome() {
  return PopupMenuButton(
    color: black1,
    itemBuilder:
        (context) => [
          popupMenuItemHome(text: newGroup, style: white16, ontap: () {}),
          popupMenuItemHome(text: starred, style: white16, ontap: () {}),
          popupMenuItemHome(text: setting, style: white16, ontap: () {}),
        ],
    child: Container(
      height: 25,
      width: 15,
      alignment: Alignment.centerRight,
      child: Icon(Icons.more_vert, color: white),
    ),
  );
}

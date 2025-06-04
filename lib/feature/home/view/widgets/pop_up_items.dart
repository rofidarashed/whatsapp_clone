import 'package:flutter/material.dart';

PopupMenuItem popupMenuItemHome({
  required String text,
  required TextStyle style,
  required VoidCallback ontap,
}) {
  return PopupMenuItem(
    padding: EdgeInsets.all(15),
    onTap: ontap,
    child: Text(text, style: style),
  );
}

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/feature/home/view/screens/home_screen.dart';

Widget buildBackButton(BuildContext context) { 
  return InkWell(
    child: Icon(Icons.arrow_back),
    onTap: () => Navigator.push(context, MaterialPageRoute(
      builder: (_) => const HomeScreen(),
    )),
  );
}


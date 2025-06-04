import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/style/colors.dart';
import 'package:whatsapp_clone/core/widget/search_container.dart';
import 'package:whatsapp_clone/feature/home/view/widgets/app_bar_home.dart';
import 'package:whatsapp_clone/feature/home/view/widgets/bottom_navigation_bar_home.dart';
import 'package:whatsapp_clone/feature/home/view/widgets/chat_labels_list_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarHome(),
      backgroundColor: black,
      appBar: appBarHome(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(children: [searchHome(), ChatLabelsListWidget()]),
        ),
      ),
    );
  }
}

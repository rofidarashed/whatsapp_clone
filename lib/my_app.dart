import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/style/colors.dart';
import 'package:whatsapp_clone/feature/home/view/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: black,
          selectedItemColor: green,
          unselectedItemColor: white,
          type: BottomNavigationBarType.fixed
        ),
      ),
    );
  }
}

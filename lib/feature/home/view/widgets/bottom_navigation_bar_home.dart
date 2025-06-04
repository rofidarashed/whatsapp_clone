import 'package:flutter/material.dart';

class BottomNavigationBarHome extends StatefulWidget {

const BottomNavigationBarHome({ super.key });

  @override
  State<BottomNavigationBarHome> createState() => _BottomNavigationBarHomeState();
}

class _BottomNavigationBarHomeState extends State<BottomNavigationBarHome> {
   int _currentIndex = 0;
  void _onTap(int index) {
    setState(() => _currentIndex = index);
  }

  @override
  Widget build(BuildContext context){
    return  BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: "Updates"),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: "Communities",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: "Calls"),
        ],
      );
  }
}


 
import 'package:daily_shopping/src/constants/constants.dart';
import 'package:flutter/material.dart';

import 'middle_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: darkblue,
        unselectedItemColor: Colors.grey,
        elevation: 0.0,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: ''),
          const BottomNavigationBarItem(
              icon: Icon(Icons.insert_chart_outlined_rounded), label: ''),
          BottomNavigationBarItem(icon: middleNavBarItem(), label: ''),
          const BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline_rounded), label: ''),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded), label: ''),
        ]);
  }
}

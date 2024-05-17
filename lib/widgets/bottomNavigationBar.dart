import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:emotion/HomePage.dart';
import 'package:emotion/MoodPages/MoodCountPage.dart';
import 'package:emotion/UserPages/UserPage.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  CustomBottomNavBar({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '主页',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.emoji_emotions),
          label: '心情',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: '待办',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.games),
          label: '游戏',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: '我的',
        ),
      ],
    );
  }
}

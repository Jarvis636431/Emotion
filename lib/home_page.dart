import 'package:flutter/material.dart';

import 'package:emotion/screens/start_page.dart';
import 'package:emotion/screens/mood_pages/today_mood_page.dart';
import 'package:emotion/screens/pending_pages/root_pending_page.dart';
import 'package:emotion/screens/funtions_pages/functions_page.dart';
import 'package:emotion/screens/user_pages/user_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  PageController naviController = PageController(initialPage: 0);

  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  final pages = [
    const StartPage(),
    const TodayMoodPage(),
    PendingPage(),
    FunctionsPage(),
    const UserPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          controller: naviController,
          children: pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                activeIcon: Icon(Icons.home),
                label: '首页',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                activeIcon: Icon(Icons.search),
                label: '搜索',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.message),
                activeIcon: Icon(Icons.message),
                label: '消息',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.book),
                activeIcon: Icon(Icons.book),
                label: '我的',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                activeIcon: Icon(Icons.person),
                label: '个人',
                backgroundColor: Colors.white),
          ],
          currentIndex: currentIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          unselectedIconTheme: const IconThemeData(size: 20),
          onTap: (index) {
            setState(() {
              currentIndex = index;
              naviController.jumpToPage(currentIndex);
            });
          },
        ));
  }
}

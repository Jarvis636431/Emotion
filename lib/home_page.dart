import 'package:flutter/material.dart';

import 'package:emotion/screens/start_page.dart';
import 'package:emotion/screens/count_and_advise_page.dart';
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
    const CountAndAdvisePage(),
    PendingPage(),
    FunctionsPage(),
    const UserPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //设置这一项才可以让底部导航栏完全透明
        extendBody: true,
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
                backgroundColor: Colors.transparent),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                activeIcon: Icon(Icons.search),
                label: '搜索',
                backgroundColor: Colors.transparent),
            BottomNavigationBarItem(
                icon: Icon(Icons.message),
                activeIcon: Icon(Icons.message),
                label: '消息'),
            BottomNavigationBarItem(
                icon: Icon(Icons.book),
                activeIcon: Icon(Icons.book),
                label: '我的',
                backgroundColor: Colors.transparent),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                activeIcon: Icon(Icons.person),
                label: '个人',
                backgroundColor: Colors.transparent),
          ],
          currentIndex: currentIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          onTap: (index) {
            setState(() {
              currentIndex = index;
              naviController.jumpToPage(currentIndex);
            });
          },
        ));
  }
}

import 'package:emotion/utils/ColorUtils.dart';
import 'package:flutter/material.dart';

import 'package:emotion/screens/start_page.dart';
import 'package:emotion/screens/count_and_advise_page.dart';
import 'package:emotion/screens/pending_pages/root_pending_page.dart';
import 'package:emotion/screens/funtions_pages/functions_page.dart';
import 'package:emotion/screens/user_pages/user_page.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:emotion/utils/ColorUtils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        extendBody: true,
        //这一项实际设置的是主页内容是否延申到底部导航栏下面，也就是说将导航栏浮起，设置这一项才可以让底部导航栏完全透明
        body: PageView(
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          controller: naviController,
          children: pages,
        ),
        bottomNavigationBar: BottomBar(
          //这里的barDecoration居然可以和单独的color和borderraidus共存，以单独设置的为准,这里设置的没有么？
          barDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60.r), //圆角
            border: Border.all(color: ColorUtils.bg_white, width: 15.r), //边框
          ),
          //加入bottombar后页面中的滚动列表会变长
          offset: 25.w,
          //对于底部的偏移
          borderRadius: BorderRadius.circular(25.r),
          //底部导航栏的圆角
          barColor: ColorUtils.bar_bg,
          //颜色
          // reverse: true,上划消失，下滑出现
          body: (BuildContext context, ScrollController controller) {
            return Container(
              height: 50.w,
              color: Colors.transparent,
            );
          },
          child: BottomNavigationBar(
            ///TODO:准备对应的图片
            elevation: 0,
            backgroundColor: Colors.transparent,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset('assets/images/bottomNavigationBarIcon/census.png'),
                  label: '首页',
                  backgroundColor: Colors.transparent),
              BottomNavigationBarItem(
                  icon: Image.asset('assets/images/bottomNavigationBarIcon/function.png'),
                  label: '搜索',
                  backgroundColor: Colors.transparent),
              BottomNavigationBarItem(
                  icon: Image.asset('assets/images/bottomNavigationBarIcon/pending.png'),
                  label: '消息'),
              BottomNavigationBarItem(
                  icon: Image.asset('assets/images/bottomNavigationBarIcon/user.png'),
                  label: '我的',
                  backgroundColor: Colors.transparent),
              BottomNavigationBarItem(
                  icon: Image.asset('assets/images/bottomNavigationBarIcon/user.png'),
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
          ),
        ));
  }
}

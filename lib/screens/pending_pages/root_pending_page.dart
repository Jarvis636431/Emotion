import 'package:emotion/utils/ColorUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'daily_summary_page.dart';
import 'reminder_page.dart';
import 'event_log_page.dart';

class PendingPage extends StatefulWidget {
  @override
  _PendingPageState createState() => _PendingPageState();
}

class _PendingPageState extends State<PendingPage> {
  @override
  Widget build(context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        decoration: const BoxDecoration(
          color: ColorUtils.light_bg
          //这里设置的颜色会覆盖tabarview里组件的背景色
        ),
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
              title: Text('事件记录',style: TextStyle(fontFamily: 'LanSong',fontSize: 24.sp,color: ColorUtils.text_brown),),
              centerTitle: true,
              bottom: TabBar(
                splashFactory: NoSplash.splashFactory,//tabbar的点击水波纹需要单独去掉，在theme里设置不管用
                dividerHeight: 0,
                //indicator只是指示器，默认是下划线，但其实修改样式修改的是那个框框
                indicator: BoxDecoration(
                  color: ColorUtils.tab_bg,
                  borderRadius: BorderRadius.circular(10.r),
                  ///设置指示器的颜色
                  // color: Color(0x00FFE27F),
                  boxShadow: const [
                    BoxShadow(
                      color: ColorUtils.tab_shadow,
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      spreadRadius: 0,
                    )
                  ],
                  ///设置阴影
                ),
                tabs: [
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/images/event_log.png',width: 25.w),
                        Text('事件记录',style: TextStyle(fontFamily: 'LanSong',fontSize: 16.sp,color: ColorUtils.text_brown)),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/images/daily_summary.png',width: 25.w),
                        Text('每日总结',style: TextStyle(fontFamily: 'LanSong',fontSize: 16.sp,color: ColorUtils.text_brown)),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/images/reminder.png',width: 25.w),
                        Text('提醒事项',style: TextStyle(fontFamily: 'LanSong',fontSize: 16.sp,color: ColorUtils.text_brown)),
                      ],
                    )
                  ),
                ],
              )),
          body: TabBarView(children: [
              EventLogPage(),
              DailySummaryPage(),
              ReminderPage(),
            ]),
        ),
      ),
    );
  }
}

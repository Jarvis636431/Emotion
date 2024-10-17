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
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
              title: Text('事件记录',style: TextStyle(fontFamily: 'LanSong',fontSize: 24.sp,color: ColorUtils.text_brown),),
              centerTitle: true,
              bottom: TabBar(
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
                      children: [
                        Icon(Icons.access_time),
                        Text('事件记录',style: TextStyle(fontFamily: 'LanSong',fontSize: 16.sp,color: ColorUtils.text_brown)),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: [
                        Icon(Icons.check),
                        Text('每日总结',style: TextStyle(fontFamily: 'LanSong',fontSize: 16.sp,color: ColorUtils.text_brown)),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: [
                        Icon(Icons.done_all),
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

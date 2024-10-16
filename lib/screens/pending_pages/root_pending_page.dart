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
          color: Color(0xFFFEFA),
          //这里设置的颜色会覆盖tabarview里组件的背景色
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
              title: Text('事件记录'),
              centerTitle: true,
              bottom: const TabBar(
                dividerHeight: 0,
                //indicator只是指示器，默认是下划线，但其实修改样式修改的是那个框框
                indicator: BoxDecoration(
                  ///设置指示器的颜色
                  color: Color(0x00ffe27f),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.black,
                  //     offset: Offset(0, -1),
                  //     blurRadius: 0,
                  //     spreadRadius: 0,
                  //   )
                  // ],
                  ///设置阴影
                ),
                tabs: [
                  Tab(
                    child: Row(
                      children: [
                        Icon(Icons.access_time),
                        Text('事件记录'),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: [
                        Icon(Icons.check),
                        Text('每日总结'),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: [
                        Icon(Icons.done_all),
                        Text('提醒事项'),
                      ],
                    )
                  ),
                ],
              )),
          body: TabBarView(children: [
            //加入子页面后会报错
              EventLogPage(),
              DailySummaryPage(),
              ReminderPage(),
            ]),
        ),
      ),
    );
  }
}

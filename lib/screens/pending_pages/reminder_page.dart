import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'new_reminder_page.dart';

class ReminderPage extends StatefulWidget {
  @override
  _ReminderPageState createState() => _ReminderPageState();
}

class _ReminderPageState extends State<ReminderPage> {
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFEFA),
      ),
      child: Column(
        children: [
          Container(
            width: 200.h,
            child: IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => NewReminder()));
              },
              icon: Icon(Icons.add_circle, size: 100.w),
            ),
          ),
          Text('新建提醒事项'),
          Container(
            height: 200.w,
            //liestview必须嵌套在有约束的父组件中，主要是在滚动方向约束
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.access_time),
                  title: Text('吃饭'),
                  subtitle: Text('提醒事件：12:00'),
                  trailing: Icon(Icons.add_circle),
                ),
                ListTile(
                  title: Text('睡觉'),
                  trailing: Icon(Icons.add_circle),
                ),
                ListTile(
                  title: Text('打豆豆'),
                  trailing: Icon(Icons.add_circle),
                ),
              ],),
          )
        ],
      ),
    );
  }
}
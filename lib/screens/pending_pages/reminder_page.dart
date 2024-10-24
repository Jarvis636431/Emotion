import 'package:emotion/utils/ColorUtils.dart';
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
        color: ColorUtils.light_bg,
      ),
      child: Column(
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const NewReminder()));
            },
            icon: Icon(Icons.add, size: 100.w, color: ColorUtils.text_brown),
          ),
          SizedBox(
            height: 10.w,
          ),
          Text(
            '新建提醒事项',
            style: TextStyle(
                fontSize: 24.sp,
                fontFamily: 'LanSong',
                color: ColorUtils.text_brown),
          ),
          //可以不用sizedbox，直接用listtile，考虑使用builder替换
          ListTile(
            leading: Icon(Icons.access_time),
            title: Text('吃饭', style: TextStyle(fontSize: 20.sp)),
            subtitle: Text(
              '提醒事件：12:00',
              style: TextStyle(fontSize: 14.sp, color: ColorUtils.subtitle),
            ),
            trailing: Container(
              //封装好组件，点击切换状态
              decoration: BoxDecoration(
                color: ColorUtils.info_card_bg,
                borderRadius: BorderRadius.circular(20.r),
                ///设计图神秘圆角
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 5.w),
                child: Text(
                  '已完成',
                  style:
                      TextStyle(fontSize: 14.sp, color: ColorUtils.text_brown),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.access_time),
            title: Text('吃饭', style: TextStyle(fontSize: 20.sp)),
            subtitle: Text(
              '提醒事件：12:00',
              style: TextStyle(fontSize: 14.sp, color: ColorUtils.subtitle),
            ),
            trailing: Container(
              //封装好组件，点击切换状态
              decoration: BoxDecoration(
                color: ColorUtils.finished_task,
                borderRadius: BorderRadius.circular(20.r),

                ///设计图神秘圆角
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 5.w),
                child: Text(
                  '未提醒',
                  style:
                      TextStyle(fontSize: 14.sp, color: ColorUtils.text_brown),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.access_time),
            title: Text('吃饭', style: TextStyle(fontSize: 20.sp)),
            subtitle: Text(
              '提醒事件：12:00',
              style: TextStyle(fontSize: 14.sp, color: ColorUtils.subtitle),
            ),
            trailing: Container(
              //封装好组件，点击切换状态
              decoration: BoxDecoration(
                color: ColorUtils.finished_task,
                borderRadius: BorderRadius.circular(20.r),

                ///设计图神秘圆角
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 5.w),
                child: Text(
                  '未提醒',
                  style:
                      TextStyle(fontSize: 14.sp, color: ColorUtils.text_brown),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:emotion/utils/ColorUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewReminder extends StatefulWidget {
  const NewReminder({super.key});

  @override
  _NewReminderState createState() => _NewReminderState();
}

class _NewReminderState extends State<NewReminder> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: ColorUtils.text_brown,
          ),
        ),
        title: Text(
          '新建提醒',
          style: TextStyle(
              fontSize: 24.sp,
              color: ColorUtils.text_brown,
              fontFamily: 'LanSong'),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              '完成',
              style: TextStyle(fontSize: 20.sp, color: ColorUtils.text_brown),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///神秘字号
            Text('给提醒命名',
                style: TextStyle(
                    fontSize: 20.sp,
                    color: ColorUtils.text_brown,
                    fontFamily: 'LanSong')),
            SizedBox(
              height: 10.w,
            ),
            Row(
              children: [
                Container(
                  width: 260.h,
                  height: 50.w,
                  decoration: BoxDecoration(
                    color: ColorUtils.bg_white,
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: const [
                      BoxShadow(
                        color: ColorUtils.tab_shadow,
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  //输入框需要父组件设置约束
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: ' 提醒名称',
                      labelStyle: TextStyle(color: ColorUtils.text_yellow),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.h,
                ),
                Container(
                  width: 80.h,
                  height: 50.w,
                  decoration: BoxDecoration(
                    color: ColorUtils.bg_white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.r),
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: ColorUtils.tab_shadow,
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: const Icon(
                    Icons.add,
                    color: ColorUtils.text_brown,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.w,
            ),
            Text('提醒日期',style: TextStyle(fontSize: 20.sp,fontFamily: 'LanSong',color: ColorUtils.text_brown),),
            Row(),
            Text('响铃重复日期',style: TextStyle(fontSize: 20.sp,fontFamily: 'LanSong'),),
            Row(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('法定节假日不提醒',style: TextStyle(fontSize: 20.sp),),
                Switch(
                  value: _isObscure,
                  onChanged: (value) {
                    setState(() {
                      _isObscure = value;
                    });
                  },
                )
              ],
            ),
            Text('激励语',style: TextStyle(fontFamily: 'LanSong',fontSize: 20.sp,color: ColorUtils.text_brown),),
            Container(
              decoration: BoxDecoration(
                color: ColorUtils.bg_white,
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: const [
                  BoxShadow(
                    color: ColorUtils.deep_shadow,
                    offset: Offset(0, 4),
                    blurRadius: 4,
                    spreadRadius: 0,
                  )
                ],
              ),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '写下一段激励自己的话吧~',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

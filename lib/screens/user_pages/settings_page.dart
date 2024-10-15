import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [Text('设置')],),
          body:Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text('基本信息'),
                Container(
                  width: 351.h,
                  height: 59.w,
                  decoration: BoxDecoration(
                    color: Colors.yellow[200],
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text('头像'),
                  ),
                SizedBox(height: 10.w),
                Container(
                  width: 600.h,
                  height: 100.w,
                  decoration: BoxDecoration(
                    color: Colors.yellow[200],
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text('昵称'),
                ),
                SizedBox(height: 10.w),
                Container(
                  width: 600.h,
                  height: 100.w,
                  decoration: BoxDecoration(
                    color: Colors.yellow[200],
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text('个性签名'),
                ),
                SizedBox(height: 10.w),
                Text('个人信息'),
                Container(
                  width: 600.h,
                  height: 100.w,
                  decoration: BoxDecoration(
                    color: Colors.yellow[200],
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text('性别'),
                ),
                SizedBox(height: 10.w),
                Container(
                  width: 600.h,
                  height: 100.w,
                  decoration: BoxDecoration(
                    color: Colors.yellow[200],
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text('mbti'),
                ),
                Expanded(child: SizedBox()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('用户协议'),
                    Text('隐私政策'),
                  ],
                ),
              ]
            ),
          ),
       );
  }
}
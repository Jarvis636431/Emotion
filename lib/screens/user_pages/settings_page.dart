import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:emotion/widgets/user_info_card.dart';
import 'package:emotion/utils/ColorUtils.dart';


import 'package:emotion/screens/user_pages/reset_mbti_page.dart';
import 'package:emotion/screens/user_pages/avatar_page.dart';
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
          icon: const Icon(Icons.arrow_back_ios, color: ColorUtils.text_brown),///icon 颜色
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [Padding(
          padding:EdgeInsets.only(right: 10.h),
          child: const Text('设置',style: TextStyle(fontSize: 20,color: ColorUtils.text_brown),),
        )],),
          body:Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.w),
            child: Column(
              ///TODO:这种情况就应该用listview
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text('基本信息',style: TextStyle(fontSize: 20.sp,fontFamily: 'LanSong',color: ColorUtils.text_brown),),
                SizedBox(height: 10.w),
                const UserInfoCard(title: '头像', destination: AvatarPage()),
                SizedBox(height: 10.w),
                const UserInfoCard(title: '昵称', destination: Text('昵称')),
                SizedBox(height: 10.w),
                const UserInfoCard(title: '个性签名', destination: Text('性别选择')),
                SizedBox(height: 10.w),
                Text('个人信息',style: TextStyle(fontSize: 20.sp,fontFamily: 'LanSong',color: ColorUtils.text_brown),),
                SizedBox(height: 10.w),
                const UserInfoCard(title: '性别', destination: Text('性别选择')),
                SizedBox(height: 10.w),
                const UserInfoCard(title: 'MBTI', destination: ReSetMbtiPage()),
                const Expanded(child: SizedBox()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('用户协议',style: TextStyle(fontSize: 14.sp,color: ColorUtils.text_brown)),
                    Text('隐私政策',style: TextStyle(fontSize: 14.sp,color: ColorUtils.text_brown))
                  ],
                ),
                SizedBox(height: 20.w),
              ]
            ),
          ),
       );
  }
}
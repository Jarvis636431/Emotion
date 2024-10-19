import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:emotion/widgets/user_info_card.dart';
import 'package:emotion/utils/ColorUtils.dart';


import 'package:emotion/screens/user_pages/reset_mbti_page.dart';
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text('基本信息',style: TextStyle(fontSize: 20.sp,fontFamily: 'LanSong',color: ColorUtils.text_brown),),
                SizedBox(height: 10.w),
                Container(
                  alignment: Alignment.centerLeft,
                  width: 351.h,
                  height: 59.w,
                  decoration: BoxDecoration(
                    color: ColorUtils.info_card_bg,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('头像',style: TextStyle(fontSize: 16.sp, color:ColorUtils.text_brown),),
                        ///需要右边的箭头么
                        Icon(Icons.arrow_forward_ios, color: ColorUtils.text_brown, size: 20.h,)
                      ],
                    ),
                  ),
                  ),
                SizedBox(height: 10.w),
                Container(
                  width: 351.h,
                  height: 59.w,
                  decoration: BoxDecoration(
                    color: ColorUtils.info_card_bg,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('昵称',style: TextStyle(fontSize: 16.sp, color:ColorUtils.text_brown),),
                        Icon(Icons.arrow_forward_ios, color: ColorUtils.text_brown, size: 20.h,)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.w),
                Container(
                  width: 351.h,
                  height: 59.w,
                  decoration: BoxDecoration(
                    color: ColorUtils.info_card_bg,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('个性签名',style: TextStyle(fontSize: 16.sp, color:ColorUtils.text_brown),),
                        Icon(Icons.arrow_forward_ios, color: ColorUtils.text_brown, size: 20.h,)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.w),
                Text('个人信息',style: TextStyle(fontSize: 20.sp,fontFamily: 'LanSong',color: ColorUtils.text_brown),),
                SizedBox(height: 10.w),
                Container(
                  width: 351.h,
                  height: 59.w,
                  decoration: BoxDecoration(
                    color: ColorUtils.info_card_bg,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('性别',style: TextStyle(fontSize: 16.sp, color:ColorUtils.text_brown),),
                        ///需要右边的箭头么
                        Icon(Icons.arrow_forward_ios, color: ColorUtils.text_brown, size: 20.h,)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.w),
                UserInfoCard(title: 'MBTI', destination: ReSetMbtiPage()),
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
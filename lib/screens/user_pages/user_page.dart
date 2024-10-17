import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:emotion/utils/ColorUtils.dart';

import 'package:emotion/screens/user_pages/settings_page.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [ColorUtils.bg_white, ColorUtils.bg_yellow],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      //设置全局背景不仅要设置设置Container的颜色，还要设置scaffold和appbar的背景同时为透明，因为默认是白色
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            actions: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingsPage()));
                },
                child: Padding(
                  padding: EdgeInsets.only(right: 20.h),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/settings.png',
                        width: 30.h,
                      ),
                      ///TODO:需要这行文字么，加上之后布局有些奇怪
                      Text(
                        '设置',
                        style: TextStyle(
                            fontSize: 13.sp,
                            color: ColorUtils.text_brown),
                      ),
                    ],
                  ),
                ),)
            ],
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/female.png',
                      width: 120.h,
                    ),
                    SizedBox(
                      width: 20.h,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '菠萝小姐',
                            style: TextStyle(
                                fontSize: 30.sp,
                                fontFamily: 'LanSong',
                                color: ColorUtils.text_brown),
                          ),
                          Text('本小姐还没有想到个性签名',
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  color: ColorUtils.text_yellow)),
                        ]),
                  ],
                ),
                SizedBox(
                  height: 20.w,
                ),
                Text('每日一言收藏',
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: 'LanSong',
                        color: ColorUtils.text_brown)),
                SizedBox(
                  height: 15.w,
                ),
                Container(
                  width: 400.h,
                  height: 184.w,
                  decoration: BoxDecoration(
                    color: ColorUtils.daily_sentence_bg,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: ColorUtils.shadow,
                        offset: Offset(0, 4),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      '每日一言',
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: ColorUtils.text_brown),
                    )
                  ),
                ),
                SizedBox(
                  height: 15.w,
                ),
                Text('测试',
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: 'LanSong',
                        color: ColorUtils.text_brown)),
                SizedBox(
                  height: 15.w,
                ),
                ///TODO：解决子组件的高度跟随父组件的原因并解决，现在存在阴影溢出
                SizedBox(
                  height: 200.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 300.h,
                        height: 185.w,
                        decoration: BoxDecoration(
                          color: ColorUtils.card_bg,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: ColorUtils.shadow,
                              offset: Offset(0, 4),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/images/testpic1.png'),
                            Text('测一测你的MBTI人格吧',style: TextStyle(fontSize: 20.sp,color: ColorUtils.text_brown)),
                          ],
                        ),
                      ),
                      SizedBox(width: 20.h),
                      Container(
                        width: 300.h,
                        height: 185.w,
                        decoration: BoxDecoration(
                          color: ColorUtils.card_bg,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: ColorUtils.shadow,
                              offset: Offset(0, 4),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/images/testpic2.png'),
                            Text('测试',style: TextStyle(fontSize: 20.sp,color: ColorUtils.text_brown)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

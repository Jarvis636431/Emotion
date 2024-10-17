import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:emotion/widgets/informationCard.dart';

import 'package:emotion/utils/ColorUtils.dart';

import 'package:emotion/screens/mood_pages/today_mood_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

//心情编码：1-一般 2-开心 3-悲伤 4-烦躁 5-生气

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
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text('4月22日 星期一 天气🌤'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '今天心情如何？',
                      style: TextStyle(
                          fontSize: 36.sp,
                          fontFamily: 'LanSong',
                          color: ColorUtils.text_brown),
                    ),
                    Text(
                      '今日心情怎么样，来记录一下吧！',
                      style: TextStyle(
                          fontSize: 12.sp, color: ColorUtils.text_yellow),
                    ),
                    SizedBox(
                      height: 15.w,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TodayMoodPage()));
                      },
                      child: Container(
                      //尺寸！
                        alignment: Alignment.center,//可以直接这样设置居中子元素
                        width: 120.h,
                        height: 50.w,
                        decoration: BoxDecoration(
                          color: ColorUtils.bg_white,
                          borderRadius: BorderRadius.circular(20.r),
                          boxShadow: const [
                            BoxShadow(
                                color: ColorUtils.shadow,
                                offset: Offset(0, 4),
                                blurRadius: 4)
                          ],
                        ),
                        child: Text(
                          '进入记录',
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: 'LanSong',
                              color: ColorUtils.text_brown),
                        ),
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/images/mbti_character/ent.png',
                  width: 130.h,
                ),
              ]),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: ColorUtils.bg_white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                              color: ColorUtils.shadow,
                              offset: Offset(0, 4),
                              blurRadius: 4)
                        ],
                      ),
                      height: 130.h,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10.r),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '心情历史',
                                  style: TextStyle(
                                      fontFamily: 'LanSong',
                                      fontSize: 20,
                                      color: ColorUtils.text_brown),
                                ),
                                InkWell(
                                  child: Text('更多'),
                                )
                              ],
                            ),
                          ),
                          //ListView父组件必须是有限制宽高的
                          Container(
                            height: 80.h,
                            child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Image.asset(
                                    'assets/images/mbti_emoji/enf/enf1.png',
                                    width: 80.h,
                                  ),
                                  Image.asset(
                                    'assets/images/mbti_emoji/enf/enf1.png',
                                    width: 80.h,
                                  ),
                                  Image.asset(
                                    'assets/images/mbti_emoji/enf/enf1.png',
                                    width: 80.h,
                                  ),
                                  Image.asset(
                                    'assets/images/mbti_emoji/enf/enf1.png',
                                    width: 80.h,
                                  ),
                                  Image.asset(
                                    'assets/images/mbti_emoji/enf/enf1.png',
                                    width: 80.h,
                                  ),
                                  Image.asset(
                                    'assets/images/mbti_emoji/enf/enf1.png',
                                    width: 80.h,
                                  ),
                                  Image.asset(
                                    'assets/images/mbti_emoji/enf/enf1.png',
                                    width: 80.h,
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '情绪资料',
                          style: TextStyle(fontSize: 20.sp),
                        ),
                        Icon(Icons.refresh)
                      ],
                    ),
                    ListView(
                      shrinkWrap: true,
                      children: [
                        const InformationCard(
                            title: 'mbti情绪大揭秘',
                            subtitle: 'mbti情绪大揭秘',
                            image: 'assets/images/informationpic1.png'),
                        SizedBox(height: 20.h),
                        const InformationCard(
                            title: '解压小百科',
                            subtitle: '怎样的方式可以\n减缓压力呢？',
                            image: 'assets/images/informationpic2.png'),
                        SizedBox(height: 20.h),
                        const InformationCard(
                            title: 'mbti情绪大揭秘',
                            subtitle: 'mbti情绪大揭秘',
                            image: 'assets/images/informationpic3.png')
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

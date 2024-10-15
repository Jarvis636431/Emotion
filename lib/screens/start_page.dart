import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:emotion/widgets/informationCard.dart';

import 'package:emotion/screens/mood_pages/today_mood_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

//心情编码：1-一般 2-开心 3-悲伤 4-烦躁 5-生气

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                    '今日心情如何？',
                    style: TextStyle(fontSize: 23.sp),
                  ),
                  Text(
                    '今日心情怎么样，来记录一下吧！',
                    style: TextStyle(fontSize: 10.sp),
                  ),
                  TextButton(
                    ///跳转到今日心情页面,路由需要修改
                      onPressed: () {
                        MaterialPageRoute(
                            builder: (context) => const TodayMoodPage());
                      },
                      child: Text(
                        '开始记录',
                        style: TextStyle(fontSize: 18.sp),
                      )),
                ],
              ),
              Image.asset(
                'assets/images/mbti_character/enf.png',
                width: 120.h,
              ),
            ]),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('心情历史'),
                              InkWell(
                                child: Text('更多'),
                              )
                            ],
                          ),
                          Container(
                            height: 100.h,
                            child:
                                //ListView父组件必须是有限制宽高的
                                ListView(
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
                      )),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('情绪资料',style: TextStyle(fontSize: 20.sp),), Icon(Icons.refresh)],
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
    );
  }
}

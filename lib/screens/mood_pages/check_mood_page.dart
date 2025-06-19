import 'package:emotion/utils/ColorUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:emotion/commons/providers.dart';

class MoodCheckPage extends StatefulWidget {
  @override
  _MoodCheckPageState createState() => _MoodCheckPageState();
}

class _MoodCheckPageState extends State<MoodCheckPage> {
  @override
  Widget build(BuildContext context) {
    final timeDateProvider = Provider.of<TimeDateProvider>(context); //获取时间

    return Container(
      decoration: const BoxDecoration(
        color: ColorUtils.light_bg,
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios,
                  color: ColorUtils.text_brown),
              onPressed: () {
                Navigator.of(context)
                  ..pop()
                  ..pop()
                  ..pop()
                  ..pop();
              },
              //实现了简单的连续返回
            ),
            title: Text('打卡成功！',
                style: TextStyle(
                    fontSize: 24.sp,
                    fontFamily: "LanSong",
                    color: ColorUtils.text_brown)),
            centerTitle: true,
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                onPressed: () {},
              ),
            ],
          ),
          body: Stack(
            children: [
              Center(child: Image.asset('assets/images/card.png')), //最上面的在最底下
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.h),
                child: Column(
                  children: [
                    SizedBox(height: 20.w),
                    Container(
                      width: 300.w,
                      height: 100.h,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                SizedBox(height: 22.w),
                                Text('4月22日\n星期一',
                                    style: TextStyle(
                                      fontSize: 22.sp,
                                      color: ColorUtils.text_brown,
                                    ),
                                    textAlign: TextAlign.center),
                              ],
                            ),
                            Image.asset(
                              'assets/images/mbti_emoji/ent/ent1.png',
                              width: 60.h,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('心情',
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      color: ColorUtils.text_brown,
                                    )),
                                Text('很好',
                                    style: TextStyle(
                                      fontSize: 24.sp,
                                      color: ColorUtils.text_brown,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ],
                            ),
                          ]),
                    ),
                    SizedBox(height: 80.w),
                    Container(
                      width: 250.w,
                      child: Text(
                        '开朗的性格不仅可以使自己经常保持心情的愉快，而且可以感染你周围的人们，使他们也觉得人生充满了和谐与光明。',
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: ColorUtils.text_brown,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 10.w),
                    Container(
                      width: 250.w,
                      alignment: Alignment.centerRight,
                      child: Text('——罗兰',
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: ColorUtils.text_brown,
                          )),
                    ),
                    SizedBox(height: 100.w),
                    Container(
                      width: 220.w,
                      height: 180.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 10),
                      ),
                      child: Image.asset('assets/images/pinpicture.png',
                          fit: BoxFit.cover),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

///TODOL打卡成功之后改怎么办你？

import 'package:emotion/utils/ColorUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:emotion/main.dart';

class MoodCheckPage extends StatefulWidget {
  @override
  _MoodCheckPageState createState() => _MoodCheckPageState();
}

class _MoodCheckPageState extends State<MoodCheckPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon:
                const Icon(Icons.arrow_back_ios, color: ColorUtils.text_brown),
            onPressed: () {
              Navigator.of(context)..pop()..pop()..pop()..pop();
            },
            ///实现了简单的连续返回
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
            //并非没有重叠，只是column太大了
            Container(
              width: 400.h,
              height: 600.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 400.w,
                    width: 400.h,
                    child: Row(children: [
                      Text('四月\n22日\n星期四'),
                      Image.asset(
                        'assets/images/mbti_emoji/enf/enf1.png',
                        width: 60.h,
                      ),
                      Text('心情\n一般')
                    ]),
                  ),
                  Text(''),
                ],
              ),
            ),
            Image.asset('assets/images/card.png') //卡片有透明边框
          ],
        ));
  }
}

///TODOL打卡成功之后改怎么办你？

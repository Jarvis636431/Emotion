import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:emotion/utils/ColorUtils.dart';
import 'now_mood_page.dart';
import 'package:emotion/widgets/clipCircle.dart';

class TodayMoodPage extends StatelessWidget {
  const TodayMoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background/bg_sad.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: IconButton(
            icon:
                const Icon(Icons.arrow_back_ios, color: ColorUtils.text_brown),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.transparent,
          title: const Text(
            '今日心情怎么样？',
            style: TextStyle(
                fontSize: 32,
                fontFamily: 'LanSong',
                color: ColorUtils.text_brown),
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 50.w),
            Center(
              child: Image.asset('assets/images/mbti_emoji/enf/enf1.png',
                  width: 250.w),
            ),
            Expanded(child: SizedBox(height: 20.w)),
            Stack(children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width, // 确保容器是正方形
                    decoration: BoxDecoration(
                      color: ColorUtils.bg_white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.r),
                        topRight: Radius.circular(40.r),
                      ),
                    )),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Transform.rotate(
                    angle: 3.14/2,
                    child: Container(
                      color: ColorUtils.text_brown,
                      height: 200.h,
                      width: 50.h,
                      child: CupertinoPicker(
                          itemExtent: 100,
                          onSelectedItemChanged: (int index) {},
                          children: [
                            Transform.rotate(
                                angle: 3.14/2,
                                child: Text('开心')),//旋转后会消失
                            Text('平静'),
                            Text('难过'),
                            Text('愤怒'),
                            Text('焦虑'),
                            Text('恐惧'),
                          ]),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NowMoodPage()));
                    },
                    child: Container(
                      width: 200.h,
                      height: 60.w,
                      decoration: BoxDecoration(
                        color: ColorUtils.bg_white,
                        borderRadius: BorderRadius.circular(20.r),
                        boxShadow: const [
                          BoxShadow(
                            color: ColorUtils.shadow,
                            offset: Offset(0, 4),
                            blurRadius: 4.0,
                            spreadRadius: 0.0,
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        '是这样的',
                        style: TextStyle(
                            fontFamily: 'LanSong',
                            fontSize: 24.sp,
                            color: ColorUtils.text_brown),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

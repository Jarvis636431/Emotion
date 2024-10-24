import 'package:emotion/utils/ColorUtils.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'mood_infactor_page.dart';

class NowMoodPage extends StatelessWidget {
  const NowMoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background/bg_sad.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: ColorUtils.text_brown,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.transparent,
          title: const Text(
            '现在心情怎么样？',
            style: TextStyle(
                fontFamily: 'LanSong',
                fontSize: 32,
                color: ColorUtils.text_brown),
          ),
        ),
        body: Column(
          children: [
            //这里放置了center，底下的按钮也会居中，因为他影响了column，使之适应了子元素的布局
            Center(
                child: Image.asset('assets/images/mbti_emoji/enf/enf1.png',
                    width: 250.w)),
            Expanded(child: SizedBox(height: 20.w)),
            //布局问题！！！
            Stack(
              ///TODO:布局问题！！！
              children: [
                // Container(
                //       width: 700.h,
                //   height: 700.w,// Adjust as needed
                //   decoration: BoxDecoration(
                //     color: ColorUtils.bg_white, // Adjust as needed
                //     shape: BoxShape.circle,
                //   ),
                //     ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MoodInfactorPage()));
                      },
                      child: Container(
                          width: 200.h,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: ColorUtils.bg_white,
                            borderRadius: BorderRadius.circular(20.r),
                            boxShadow: const [
                              BoxShadow(
                                color: ColorUtils.shadow,
                                offset: Offset(0, 4), //阴影xy轴偏移量
                                blurRadius: 4.0, //阴影模糊程度
                                spreadRadius: 0.0, //阴影扩散程度
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
                          )), //修改字体
                    ),
                    SizedBox(height: 80.w),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

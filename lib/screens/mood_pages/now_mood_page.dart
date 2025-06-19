import 'package:emotion/utils/ColorUtils.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

import 'mood_infactor_page.dart';

class NowMoodPage extends StatefulWidget {
  const NowMoodPage({Key? key}) : super(key: key);

  @override
  State<NowMoodPage> createState() => _NowMoodPageState();
}

class _NowMoodPageState extends State<NowMoodPage> {
  int selectedIndex = 2;
  final List<String> moodIcons = [
    'assets/images/mbti_emoji/enf/enf3.png', // 悲伤
    'assets/images/mbti_emoji/enf/enf4.png', // 生气
    'assets/images/mbti_emoji/enf/enf1.png', // 平淡
    'assets/images/mbti_emoji/enf/enf2.png', // 开心
    'assets/images/mbti_emoji/enf/enf5.png', // 烦躁
  ];
  final List<String> moodNames = ['悲伤', '生气', '平淡', '开心', '烦躁'];

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
            Center(child: Image.asset(moodIcons[selectedIndex], width: 250.w)),
            SizedBox(height: 12.w),
            Text(
              moodNames[selectedIndex],
              style: TextStyle(
                  fontSize: 24.sp,
                  color: ColorUtils.text_brown,
                  fontFamily: 'LanSong'),
            ),
            const Spacer(),
            // 半圆轮盘选择器
            SizedBox(
              width: 1.sw,
              height: 220.w,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  // 半圆背景
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: CustomPaint(
                      size: Size(1.sw, 180.w),
                      painter: _HalfCirclePainter(),
                    ),
                  ),
                  // 轮盘icon
                  Positioned.fill(
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        final r = constraints.maxWidth / 2.2;
                        final centerX = constraints.maxWidth / 2;
                        final centerY = constraints.maxHeight - 40.w;
                        return Stack(
                          children: List.generate(moodIcons.length, (i) {
                            final angle = 3.14 * (i / (moodIcons.length - 1));
                            final x = centerX +
                                r * math.cos(angle) -
                                (selectedIndex == i ? 40.w : 28.w);
                            final y = centerY -
                                r * math.sin(angle) -
                                (selectedIndex == i ? 40.w : 28.w);
                            return Positioned(
                              left: x,
                              top: y,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = i;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 200),
                                  curve: Curves.easeOut,
                                  width: selectedIndex == i ? 80.w : 56.w,
                                  height: selectedIndex == i ? 80.w : 56.w,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    boxShadow: selectedIndex == i
                                        ? [
                                            BoxShadow(
                                              color: ColorUtils.text_brown
                                                  .withOpacity(0.18),
                                              blurRadius: 16,
                                              spreadRadius: 2,
                                            )
                                          ]
                                        : [],
                                  ),
                                  child: Image.asset(moodIcons[i]),
                                ),
                              ),
                            );
                          }),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.w),
            // 继续按钮
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
                  )),
            ),
            SizedBox(height: 30.w),
          ],
        ),
      ),
    );
  }
}

class _HalfCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFFFF3C1)
      ..style = PaintingStyle.fill;
    final rect = Rect.fromLTWH(0, 0, size.width, size.height * 2);
    canvas.drawArc(rect, 3.14, 3.14, false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

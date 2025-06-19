import 'package:emotion/utils/ColorUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DailySentencePage extends StatefulWidget {
  @override
  _DailySentencePageState createState() => _DailySentencePageState();
}

class _DailySentencePageState extends State<DailySentencePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: ColorUtils.light_bg),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon:
                const Icon(Icons.arrow_back_ios, color: ColorUtils.text_brown),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('我收藏的话',
              style: TextStyle(
                  fontSize: 24.sp,
                  color: ColorUtils.text_brown,
                  fontFamily: 'LanSong')),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.w),
          child: Column(
            children: [
              Container(
                height: 470.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: const Color(0xFFFFF3C1),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x1A000000),
                      offset: Offset(0, 8),
                      blurRadius: 16,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(24.w, 24.h, 24.w, 24.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '2024年3月21日',
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: ColorUtils.text_brown,
                        ),
                      ),
                      SizedBox(height: 40.h),
                      Text(
                        '谁说我没有死过？\n出生以前，太阳已无数次起落，悠久的时光被悠久的虚无吞并，又以我生日的名义卷土重来。',
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: ColorUtils.text_brown,
                          height: 1.6,
                        ),
                      ),
                      const Spacer(),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          '——《病隙碎笔》',
                          style: TextStyle(
                            fontSize: 20.sp,
                            color: ColorUtils.text_brown,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25.w),
              ///TODO：实现翻页动画效果
              Stack(
                //实现堆叠卡片效果，注意上下层次，stack的children中第一个在最上面
                children: [
                  Container(
                    height: 200.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: ColorUtils.daily_card_3,
                    ),
                  ),
                  Container(
                    height: 150.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: ColorUtils.daily_card_2,
                    ),
                  ),
                  Container(
                    height: 100.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: ColorUtils.daily_card_1,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                '2024年3月20日',
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  color: ColorUtils.text_brown,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '． ． ． ． ． ．',
                                style: TextStyle(
                                  fontSize: 24.sp,
                                  color: ColorUtils.text_brown,
                                  letterSpacing: 1,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

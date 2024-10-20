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
                  color: ColorUtils.bg_yellow,
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

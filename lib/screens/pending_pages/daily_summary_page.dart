import 'package:emotion/utils/ColorUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DailySummaryPage extends StatefulWidget {
  const DailySummaryPage({super.key});

  @override
  _DailySummaryPageState createState() => _DailySummaryPageState();
}

class _DailySummaryPageState extends State<DailySummaryPage> {
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        color: ColorUtils.light_bg,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 150.w,
              width: 400.h,
              child: Image.asset('assets/images/test.png', fit: BoxFit.cover),
            ),
            SizedBox(height: 20.w),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('工作', style: TextStyle(fontSize: 20.sp)),
              subtitle: Text(
                '记录时间：12:00',
                style:
                    TextStyle(fontSize: 14.sp, color: ColorUtils.text_yellow),
              ),
              trailing: Container(
                //封装好组件，点击切换状态
                decoration: BoxDecoration(
                  color: ColorUtils.info_card_bg,
                  borderRadius: BorderRadius.circular(20.r),

                  ///设计图神秘圆角
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.h, vertical: 5.w),
                  child: Text(
                    '  X3  ',
                    style: TextStyle(
                        fontSize: 14.sp, color: ColorUtils.text_brown),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('工作', style: TextStyle(fontSize: 20.sp)),
              subtitle: Text(
                '记录时间：12:00',
                style:
                    TextStyle(fontSize: 14.sp, color: ColorUtils.text_yellow),
              ),
              trailing: Container(
                //封装好组件，点击切换状态
                decoration: BoxDecoration(
                  color: ColorUtils.info_card_bg,
                  borderRadius: BorderRadius.circular(20.r),

                  ///设计图神秘圆角
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.h, vertical: 5.w),
                  child: Text(
                    '  X3  ',
                    style: TextStyle(
                        fontSize: 14.sp, color: ColorUtils.text_brown),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('工作', style: TextStyle(fontSize: 20.sp)),
              subtitle: Text(
                '记录时间：12:00',
                style:
                    TextStyle(fontSize: 14.sp, color: ColorUtils.text_yellow),
              ),
              trailing: Container(
                //封装好组件，点击切换状态
                decoration: BoxDecoration(
                  color: ColorUtils.info_card_bg,
                  borderRadius: BorderRadius.circular(20.r),

                  ///设计图神秘圆角
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.h, vertical: 5.w),
                  child: Text(
                    '  X3  ',
                    style: TextStyle(
                        fontSize: 14.sp, color: ColorUtils.text_brown),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// 使用listview.builder和数组
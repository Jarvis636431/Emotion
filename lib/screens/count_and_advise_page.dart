import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:emotion/utils/ColorUtils.dart';

class CountAndAdvisePage extends StatefulWidget {
  const CountAndAdvisePage({super.key});

  @override
  _CountAndAdvisePageState createState() => _CountAndAdvisePageState();
}

class _CountAndAdvisePageState extends State<CountAndAdvisePage> {
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
        //这样设置的背景颜色其实不是根据页面内容的长度渐变的，而是只是从屏幕底部渐变到屏幕顶部，所以滑动的时候也不变
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Text('心情统计',
                  style: TextStyle(
                      fontSize: 24.sp,
                      color: ColorUtils.text_brown,
                      fontFamily: 'LanSong')),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 20.h, right: 20.h, top: 10.w,bottom: 160.w),//调整合适的底部距离并防止底部导航栏遮挡
                ///颜色？
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Container(
                    color: ColorUtils.bg_yellow,
                    height: 400.w,
                  ),
                  SizedBox(height: 10.w),
                  Text('情绪分析',style: TextStyle(fontFamily: 'LanSong',fontSize: 20.sp,color: ColorUtils.text_brown)),
                  SizedBox(height: 10.w),
                      Row(
                        children: [
                          ///这里的字体要改么
                          Container(
                            width: 170.h,
                            height: 80.w,
                            decoration: BoxDecoration(
                              color: ColorUtils.tag_bg,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: Text('开心',style: TextStyle(fontFamily: 'LanSong',fontSize: 20.sp,color: ColorUtils.text_brown)),
                          ),
                          Expanded(child: SizedBox()),
                          Container(
                            width: 170.h,
                            height: 80.w,
                            decoration: BoxDecoration(
                              color: ColorUtils.tag_bg,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: Text('80%',style: TextStyle(fontFamily: 'LanSong',fontSize: 40.sp,color: ColorUtils.text_brown)),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.w),
                      Text('原因分析',style: TextStyle(fontFamily: 'LanSong',fontSize: 20.sp,color: ColorUtils.text_brown)),
                      SizedBox(height: 10.w),
                      Container(
                        width: 350.h,
                        height: 100.w,
                        decoration: BoxDecoration(
                          color: ColorUtils.tag_bg,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Text('开心',style: TextStyle(fontFamily: 'LanSong',fontSize: 20.sp,color: ColorUtils.text_brown)),
                      ),
                      SizedBox(height: 20.w),
                      Container(
                        width: 350.h,
                        height: 100.w,
                        decoration: BoxDecoration(
                          color: ColorUtils.light_tag_bg,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Text('开心',style: TextStyle(fontFamily: 'LanSong',fontSize: 20.sp,color: ColorUtils.text_brown)),
                      ),
                      SizedBox(height: 10.w),
                      Text('应对方法',style: TextStyle(fontFamily: 'LanSong',fontSize: 20.sp,color: ColorUtils.text_brown)),
                      SizedBox(height: 10.w),
                      Text('当ENT愤怒的时候',style: TextStyle(fontSize: 16.sp)),
                      SizedBox(height: 10.w),
                      ///TODO：调整内容，修改点击变化
                      Container(
                        decoration: BoxDecoration(
                          color: ColorUtils.tag_bg,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: ListTile(
                          title: Text('1. 保持冷静，不要激动'),
                          subtitle: Text('2. 保持冷静，不要激动'),
                          leading: Icon(Icons.check),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      SizedBox(height: 10.w),
                      Container(
                        decoration: BoxDecoration(
                          color: ColorUtils.tag_bg,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: ListTile(
                          title: Text('1. 保持冷静，不要激动'),
                          subtitle: Text('2. 保持冷静，不要激动'),
                          leading: Icon(Icons.check),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ]),
              ),
            )));
  }
}

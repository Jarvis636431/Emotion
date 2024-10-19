import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:emotion/utils/ColorUtils.dart';

class EventLogPage extends StatefulWidget {
  const EventLogPage({super.key});

  @override
  _EventLogPageState createState() => _EventLogPageState();
}

class _EventLogPageState extends State<EventLogPage> {
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        color: ColorUtils.light_bg,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('新的事件',style: TextStyle(fontSize: 20.sp,fontFamily: 'LanSong',color: ColorUtils.text_brown),),
            SizedBox(
              height: 10.w,
            ),
            Row(
              children: [
                Container(
                  width: 260.h,
                  height: 50.w,
                  decoration: BoxDecoration(
                    color: ColorUtils.bg_white,
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: const [
                      BoxShadow(
                        color: ColorUtils.tab_shadow,
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  //输入框需要父组件设置约束
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: ' 事件',
                      labelStyle: TextStyle(color: ColorUtils.text_yellow),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.h,
                ),
                Container(
                  width: 70.h,
                  height: 50.w,
                  decoration: BoxDecoration(
                    color: ColorUtils.bg_white,
                    borderRadius: BorderRadius.only(
                      //设计图里的神秘圆角！！！
                      topLeft: Radius.circular(10.r),
                      topRight: Radius.circular(20.r),
                      bottomLeft: Radius.circular(10.r),
                      bottomRight: Radius.circular(20.r),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: ColorUtils.tab_shadow,
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      spreadRadius: 0,
                    )
                  ],),
                  child: const Icon(Icons.add, color: ColorUtils.text_yellow,),
                )
              ],
            ),
            SizedBox(
              height: 20.w,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      width: 55.h,
                      height: 66.w,
                      decoration: BoxDecoration(
                        color: ColorUtils.info_card_bg,
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(color: ColorUtils.border_yellow),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 35.h,
                              height: 35.h, // 确保Container是一个正方形
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorUtils.circle,
                              ),
                              //需要设置一下center才可以避免image跟随container的大小变化
                              child: Center(
                                child: Image.asset(
                                  'assets/images/click.png',
                                  width: 20.h, // 设置Image的宽度
                                  height: 20.h, // 设置Image的高度
                                ),
                              ),
                            ),
                        Text('吃饭',style: TextStyle(color: ColorUtils.text_brown,fontSize: 16.sp))
                      ]),
                    ),
                    SizedBox(
                      height: 10.w,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorUtils.bg_yellow,
                        border: Border.all(color: ColorUtils.text_yellow),
                      ),
                        child: Icon(Icons.add, color: ColorUtils.text_brown,))
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 55.h,
                      height: 66.w,
                      decoration: BoxDecoration(
                        color: ColorUtils.info_card_bg,
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(color: ColorUtils.border_yellow),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 35.h,
                              height: 35.h, // 确保Container是一个正方形
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorUtils.circle,
                              ),
                              //需要设置一下center才可以避免image跟随container的大小变化
                              child: Center(
                                child: Image.asset(
                                  'assets/images/click.png',
                                  width: 20.h, // 设置Image的宽度
                                  height: 20.h, // 设置Image的高度
                                ),
                              ),
                            ),
                            Text('吃饭',style: TextStyle(color: ColorUtils.text_brown,fontSize: 16.sp))
                          ]),
                    ),
                    SizedBox(
                      height: 10.w,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorUtils.bg_yellow,
                          border: Border.all(color: ColorUtils.text_yellow),
                        ),
                        child: Icon(Icons.add, color: ColorUtils.text_brown,))
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 55.h,
                      height: 66.w,
                      decoration: BoxDecoration(
                        color: ColorUtils.info_card_bg,
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(color: ColorUtils.border_yellow),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 35.h,
                              height: 35.h, // 确保Container是一个正方形
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorUtils.circle,
                              ),
                              //需要设置一下center才可以避免image跟随container的大小变化
                              child: Center(
                                child: Image.asset(
                                  'assets/images/click.png',
                                  width: 20.h, // 设置Image的宽度
                                  height: 20.h, // 设置Image的高度
                                ),
                              ),
                            ),
                            Text('吃饭',style: TextStyle(color: ColorUtils.text_brown,fontSize: 16.sp))
                          ]),
                    ),
                    SizedBox(
                      height: 10.w,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorUtils.bg_yellow,
                          border: Border.all(color: ColorUtils.text_yellow),
                        ),
                        child: Icon(Icons.add, color: ColorUtils.text_brown,))
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 55.h,
                      height: 66.w,
                      decoration: BoxDecoration(
                        color: ColorUtils.info_card_bg,
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(color: ColorUtils.border_yellow),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 35.h,
                              height: 35.h, // 确保Container是一个正方形
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorUtils.circle,
                              ),
                              //需要设置一下center才可以避免image跟随container的大小变化
                              child: Center(
                                child: Image.asset(
                                  'assets/images/click.png',
                                  width: 20.h, // 设置Image的宽度
                                  height: 20.h, // 设置Image的高度
                                ),
                              ),
                            ),
                            Text('吃饭',style: TextStyle(color: ColorUtils.text_brown,fontSize: 16.sp))
                          ]),
                    ),
                    SizedBox(
                      height: 10.w,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorUtils.bg_yellow,
                          border: Border.all(color: ColorUtils.text_yellow),
                        ),
                        child: Icon(Icons.add, color: ColorUtils.text_brown,))
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 55.h,
                      height: 66.w,
                      decoration: BoxDecoration(
                        color: ColorUtils.info_card_bg,
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(color: ColorUtils.border_yellow),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 35.h,
                              height: 35.h, // 确保Container是一个正方形
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorUtils.circle,
                              ),
                              //需要设置一下center才可以避免image跟随container的大小变化
                              child: Center(
                                child: Image.asset(
                                  'assets/images/click.png',
                                  width: 20.h, // 设置Image的宽度
                                  height: 20.h, // 设置Image的高度
                                ),
                              ),
                            ),
                            Text('吃饭',style: TextStyle(color: ColorUtils.text_brown,fontSize: 16.sp))
                          ]),
                    ),
                    SizedBox(
                      height: 10.w,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorUtils.bg_yellow,
                          border: Border.all(color: ColorUtils.text_yellow),
                        ),
                        child: Icon(Icons.add, color: ColorUtils.text_brown,))
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.w,
            ),
            Text('进行中的目标',style: TextStyle(fontFamily: 'LanSong',color: ColorUtils.text_brown,fontSize: 20.sp),),
            SizedBox(
              height: 10.w,
            ),
            // /加入滚动事件 single scroll/column等的嵌套层级
            //关键在于container的自适应高度，滚动的话内嵌listbview即可
            Container(
              height: 420.w,
              decoration: BoxDecoration(
                color: ColorUtils.info_card_bg,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20.r), topRight: Radius.circular(20.r)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.w),
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.w),
                      decoration: BoxDecoration(
                        color: ColorUtils.bg_white,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: ListTile(
                        leading: Container(
                          width: 50.h,
                          height: 50.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorUtils.bg_yellow,
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/click.png',
                              width: 20.h,
                              height: 20.h,
                            )
                          ),
                        ),
                        title: Text('工作',style: TextStyle(fontSize: 20.sp,color: ColorUtils.text_brown),),
                        subtitle: Text('内容$index',style: TextStyle(fontSize: 14.sp,color: ColorUtils.text_yellow),),
                        trailing: Icon(Icons.circle_outlined, color: ColorUtils.text_brown, size: 30.sp,),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

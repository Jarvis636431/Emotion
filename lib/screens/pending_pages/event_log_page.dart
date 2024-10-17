import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:emotion/utils/ColorUtils.dart';

class EventLogPage extends StatefulWidget {
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
              height: 10.w,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      child: Column(children: [
                        // Image.asset()
                        Text('吃饭')
                      ]),
                    ),
                    Icon(Icons.add_circle)
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10.w,
            ),
            Text('进行中的目标',style: TextStyle(fontFamily: 'LanSong',color: ColorUtils.text_brown,fontSize: 20.sp),),
            SizedBox(
              height: 10.w,
            ),
            // /加入滚动事件 single scroll/column等的嵌套层级
            //关键在于container的自适应高度，滚动的话内嵌listbview即可
            Container(
              ///TODO:实现内阴影
              height: 400.w,
              decoration: BoxDecoration(
                color: ColorUtils.info_card_bg,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20.r), topRight: Radius.circular(20.r)),
              ),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('item $index'),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

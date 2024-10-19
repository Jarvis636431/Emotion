import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:emotion/utils/ColorUtils.dart';

class WriteNotePage extends StatefulWidget {
  const WriteNotePage({super.key});

  @override
  _WriteNotePageState createState() => _WriteNotePageState();
}

class _WriteNotePageState extends State<WriteNotePage> {
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
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: ColorUtils.text_brown,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: Text(
                '2024年4月22日',
                style: TextStyle(
                    fontSize: 24.sp,
                    color: ColorUtils.text_brown,
                    fontFamily: 'LanSong'),
              ),
              centerTitle: true,
              actions: [
                IconButton(
                  icon: const Icon(
                    Icons.check,
                    color: ColorUtils.text_brown,
                  ),
                  onPressed: () {
                    //保存日记
                  },
                ),
              ],
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    ///实现一个富文本编辑器
                    height: 0.5.sh,
                    color: ColorUtils.bg_yellow,
                  ),
                  SizedBox(height: 25.w),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 50.h,
                        height: 25.w,
                        decoration: BoxDecoration(
                          color: ColorUtils.tag_bg,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        alignment: Alignment.center,
                        child: Text('#开心',
                            style: TextStyle(
                                fontFamily: 'LanSong',
                                fontSize: 20.sp,
                                color: ColorUtils.text_brown)),
                      ),
                      Container(
                        width: 50.h,
                        height: 25.w,
                        decoration: BoxDecoration(
                          color: ColorUtils.tag_bg,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        alignment: Alignment.center,
                        child: Text('#开心',
                            style: TextStyle(
                                fontFamily: 'LanSong',
                                fontSize: 20.sp,
                                color: ColorUtils.text_brown)),
                      ),
                      Container(
                        width: 50.h,
                        height: 25.w,
                        decoration: BoxDecoration(
                          color: ColorUtils.tag_bg,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        alignment: Alignment.center,
                        child: Text('#开心',
                            style: TextStyle(
                                fontFamily: 'LanSong',
                                fontSize: 20.sp,
                                color: ColorUtils.text_brown)),
                      ),
                      Container(
                        width: 50.h,
                        height: 25.w,
                        decoration: BoxDecoration(
                          color: ColorUtils.tag_bg,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        alignment: Alignment.center,
                        child: Text('#开心',
                            style: TextStyle(
                                fontFamily: 'LanSong',
                                fontSize: 20.sp,
                                color: ColorUtils.text_brown)),
                      ),
                      Container(
                        width: 50.h,
                        height: 25.w,
                        decoration: BoxDecoration(
                          color: ColorUtils.tag_bg,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        alignment: Alignment.center,
                        child: Text('#开心',
                            style: TextStyle(
                                fontFamily: 'LanSong',
                                fontSize: 20.sp,
                                color: ColorUtils.text_brown)),
                      ),
                    ],
                  ),
                  SizedBox(height: 25.w),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                     Image.asset('assets/images/function/note_icons/note_icon_angry.png',width: 50.h,),
                      Image.asset('assets/images/function/note_icons/note_icon_sad.png',width: 50.h,),
                      Image.asset('assets/images/function/note_icons/note_icon_normal.png',width: 50.h,),
                      Image.asset('assets/images/function/note_icons/note_icon_clever.png',width: 50.h,),
                      Image.asset('assets/images/function/note_icons/note_icon_happy.png',width: 50.h,),
                    ],
                  ),
                  SizedBox(height: 15.w),
                  Text('（可点击拖拽安放贴纸）', style: TextStyle(fontSize: 12.sp)),
                  SizedBox(height: 35.w),
                  ///TODO:导入素材
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //实现精确对齐
                      Column(
                        children: [
                          Image.asset('assets/images/function/note_icons/rewrite.png',width: 35.h,),
                          SizedBox(height: 5.w),
                          Text('重写',style: TextStyle(fontSize: 12.sp),),
                        ],
                      ),
                      SizedBox(width: 20.w),
                      Column(
                        children: [
                          Image.asset('assets/images/function/note_icons/import_image.png',width: 40.h,),
                          SizedBox(height: 5.w),
                          Text('导入图片',style: TextStyle(fontSize: 12.sp),),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )));
  }
}

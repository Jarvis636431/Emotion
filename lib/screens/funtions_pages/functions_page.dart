import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:emotion/screens/funtions_pages/fill_color_page.dart';
import 'package:emotion/screens/funtions_pages/think_page.dart';

import 'package:emotion/utils/ColorUtils.dart';

class FunctionsPage extends StatefulWidget {
  const FunctionsPage({super.key});

  @override
  _FunctionsPageState createState() => _FunctionsPageState();
}

class _FunctionsPageState extends State<FunctionsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images'
              '/background/otherbackgrounds/functionsBackground.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        //设置全局背景需要设置这个
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            '放松一下',
            style: TextStyle(
                fontSize: 24.sp,
                fontFamily: 'LanSong',
                color: ColorUtils.text_brown),
          ),
          //需要单独设置appbar的背景为透明
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                //这样的自定义元素太多就不方便封装
            InkWell(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => const FillColorPage()));
              },
              child: Container(
                width: 400.h,
                height: 127.w,
                decoration: BoxDecoration(
                  color: ColorUtils.func_card_bg,
                  borderRadius: BorderRadius.circular(20.r),
                  boxShadow: const [
                    BoxShadow(
                      color: ColorUtils.shadow,
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 15.w),
                  child: Row(
                    ///TODO:设计图尺寸没法实现，需要重新设计
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '插画填色游戏',
                            style: TextStyle(
                                fontFamily: 'LanSong',
                                fontSize: 21.sp,
                                color: ColorUtils.text_brown),
                          ),

                          ///设置divider
                          Divider(
                            color: Colors.green,
                            height: 10.w,
                            thickness: 100.h,
                          ),
                          Text(
                            '“一笔一画勾勒间，寻觅心灵的慰藉”',
                            style: TextStyle(fontSize: 13.sp),
                          ),
                          SizedBox(
                            height: 10.w,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: ColorUtils.info_card_bg,
                                  borderRadius: BorderRadius.circular(6.r),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5.h, vertical: 3.w),
                                  child: Text('#为您推荐'),
                                ),
                              ),
                              SizedBox(
                                width: 5.h,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: ColorUtils.info_card_bg,
                                  borderRadius: BorderRadius.circular(6.r),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5.h, vertical: 3.w),
                                  child: Text('美术疗愈'),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10.h,
                      ),
                      Container(
                        width: 79.h,
                        height: 79.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          gradient: const LinearGradient(
                            colors: [ColorUtils.grad_blue, ColorUtils.grad_pink],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          image: const DecorationImage(
                            image: AssetImage(
                                'assets/images/function/fillcolor.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.w,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => ThinkPage()));
              },
              child: Container(
                width: 400.h,
                height: 127.w,
                decoration: BoxDecoration(
                  color: ColorUtils.func_card_bg,
                  borderRadius: BorderRadius.circular(20.r),
                  boxShadow: const [
                    BoxShadow(
                      color: ColorUtils.shadow,
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 15.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '白噪音冥想',
                            style: TextStyle(
                                fontFamily: 'LanSong',
                                fontSize: 21.sp,
                                color: ColorUtils.text_brown),
                          ),

                          ///设置divider
                          Divider(
                            color: Colors.green,
                            height: 10.w,
                            thickness: 100.h,
                          ),
                          Text(
                            '“闭目凝神，于喧嚣中寻一隅静谧”',
                            style: TextStyle(fontSize: 13.sp),
                          ),
                          SizedBox(
                            height: 10.w,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: ColorUtils.info_card_bg,
                                  borderRadius: BorderRadius.circular(6.r),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5.h, vertical: 3.w),
                                  child: Text('#为您推荐'),
                                ),
                              ),
                              SizedBox(
                                width: 5.h,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: ColorUtils.info_card_bg,
                                  borderRadius: BorderRadius.circular(6.r),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5.h, vertical: 3.w),
                                  child: Text('音乐疗愈'),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10.h,
                      ),
                      Container(
                        width: 79.h,
                        height: 79.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          gradient: const LinearGradient(
                            colors: [
                              ColorUtils.grad_light_green,
                              ColorUtils.grad_green
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          image: const DecorationImage(
                            image: AssetImage(
                                'assets/images/function/emptythink.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.w,
            ),
            Container(
              width: 400.h,
              height: 127.w,
              decoration: BoxDecoration(
                color: ColorUtils.func_card_bg,
                borderRadius: BorderRadius.circular(20.r),
                boxShadow: const [
                  BoxShadow(
                    color: ColorUtils.shadow,
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 15.w),
                child: Row(
                  ///TODO:设计图尺寸没法实现，需要重新设计
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '插画填色游戏',
                          style: TextStyle(
                              fontFamily: 'LanSong',
                              fontSize: 21.sp,
                              color: ColorUtils.text_brown),
                        ),

                        ///设置divider
                        Divider(
                          color: Colors.green,
                          height: 10.w,
                          thickness: 100.h,
                        ),
                        Text(
                          '“一笔一画勾勒间，寻觅心灵的慰藉”',
                          style: TextStyle(fontSize: 13.sp),
                        ),
                        SizedBox(
                          height: 10.w,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: ColorUtils.info_card_bg,
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5.h, vertical: 3.w),
                                child: Text('#为您推荐'),
                              ),
                            ),
                            SizedBox(
                              width: 5.h,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: ColorUtils.info_card_bg,
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5.h, vertical: 3.w),
                                child: Text('美术疗愈'),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10.h,
                    ),
                    Container(
                      width: 79.h,
                      height: 79.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        gradient: const LinearGradient(
                          colors: [
                            ColorUtils.grad_light_pink,
                            ColorUtils.grad_lighter_pink
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        image: const DecorationImage(
                          image: AssetImage(
                              'assets/images/function/takenotes.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40.w,
            ),
            const Text(
              '开发中...',
              style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'LanSong',
                  color: ColorUtils.text_brown),
            )
          ]),
        ),
      ),
    );
  }
}

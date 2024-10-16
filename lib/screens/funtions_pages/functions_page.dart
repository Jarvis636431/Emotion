import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:emotion/utils/ColorUtils.dart';

class FunctionsPage extends StatefulWidget {
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
          title: const Text('放松一下'),
          //需要单独设置appbar的背景为透明
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
              width: 400.h,
              height: 150.w,
              decoration: BoxDecoration(
                color: ColorUtils.func_card_bg,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  ///设置阴影
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0),
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('插画填色游戏'),
                      ///设置divider
                      Divider(
                        color: Colors.green,
                        height: 10.w,
                        thickness: 100.h,
                      ),
                      Text('“一笔一画勾勒间，寻觅心灵的慰藉”'),
                      Row(
                        children: [
                          Container(
                            color: Colors.red,
                            child: Text('为您推荐'),
                          ),
                          Container(child: Text('美术疗愈'))
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  Container(
                    width: 100.h,
                    height: 100.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        colors: [Colors.pinkAccent, Colors.blue],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      image: const DecorationImage(
                        image:
                            AssetImage('assets/images/function/fillcolor.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.w,
            ),
            Container(
              width: 400.h,
              height: 150.w,
              decoration: BoxDecoration(
                color: ColorUtils.func_card_bg,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  ///设置阴影
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0),
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('插画填色游戏'),

                      ///设置divider
                      Divider(
                        color: Colors.green,
                        height: 10.w,
                        thickness: 100.h,
                      ),
                      Text('“一笔一画勾勒间，寻觅心灵的慰藉”'),
                      Row(
                        children: [
                          Container(
                            color: Colors.red,
                            child: Text('为您推荐'),
                          ),
                          Container(child: Text('美术疗愈'))
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  Container(
                    width: 100.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        colors: [Colors.greenAccent, Colors.green],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      image: const DecorationImage(
                        image:
                            AssetImage('assets/images/function/emptythink.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.w,
            ),
            Container(
              width: 400.h,
              height: 150.w,
              decoration: BoxDecoration(
                color: ColorUtils.func_card_bg,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  ///设置阴影
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0),
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('插画填色游戏'),
                      ///设置divider
                      Divider(
                        color: Colors.green,
                        height: 10.h,
                        thickness: 100.h,
                      ),
                      Text('“一笔一画勾勒间，寻觅心灵的慰藉”'),
                      Row(
                        children: [
                          Container(
                            color: Colors.red,
                            child: Text('为您推荐'),
                          ),
                          Container(child: Text('美术疗愈'))
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  Container(
                    width: 100.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        colors: [Colors.pink, Colors.pinkAccent],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      image: const DecorationImage(
                        image:
                            AssetImage('assets/images/function/takenotes.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
            ),
                SizedBox(height: 40.w,),
                Text('开发中...')
          ]),
        ),
      ),
    );
  }
}

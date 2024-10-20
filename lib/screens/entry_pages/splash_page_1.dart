import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:emotion/utils/ColorUtils.dart';

import 'splash_page_2.dart';

class SplashPage1 extends StatelessWidget {
  const SplashPage1({super.key});

  @override
  Widget build(BuildContext context) {
    //Inkwell和Gesturedetector的区别，可以包裹gesture detector但是不能包裹inkwell
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SplashPage2()));
      },
      child: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: [ColorUtils.bg_yellow, ColorUtils.bg_white],
            center: Alignment.center,
            radius: 0.8,
          ),
        ),
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Image.asset(
              'assets/images/intros/intro_img_1.png',
            ),
            Text('abc',style:TextStyle(color: ColorUtils.text_brown,decoration: TextDecoration.none))
            ///在根目录为非material形式下，即不是scaffol或者material组件构成的页面，默认的效果会是红色字体加黄色下划线，设置text的属性即可修复，
            ///text decoration就是用来修复下划线的
          ],
        ),
      ),
    );
  }
}

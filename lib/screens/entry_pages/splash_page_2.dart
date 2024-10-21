import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:emotion/utils/ColorUtils.dart';

import 'gender_selection.dart';

class SplashPage2 extends StatelessWidget {
  const SplashPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder:(context) => const GenderSelectionPage()));
      },
      child: Container(
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              colors: [ColorUtils.bg_yellow, ColorUtils.bg_white],
              center: Alignment.center,
              radius: 1.5,
            ),
          ),
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Image.asset('assets/images/intros/intro_img_2.png',),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('祝好，\n在数不尽的明天', style: TextStyle(color: ColorUtils.text_brown,
                        decoration: TextDecoration.none,fontFamily: 'BoHeHaiYan'),),
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}
import 'package:emotion/utils/ColorUtils.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'mood_infactor_page.dart';

class NowMoodPage extends StatelessWidget {
  const NowMoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/images/background/bg_sad.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios,color: ColorUtils.text_brown,),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.transparent,
          title: const Text('今日心情怎么样？',style: TextStyle(fontFamily: 'LanSong',fontSize: 32,color: ColorUtils.text_brown),),
        ),
        body: Column(
          children: [
            Center(
              child: Image.asset('assets/images/mbti_emoji/enf/enf1.png'),
            ),
            Expanded(child: SizedBox(height: 20.w)),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MoodInfactorPage()));
              },
              child: Container(
                  width: 200.h,
                  height: 60.w,
                  decoration: BoxDecoration(
                    color: ColorUtils.bg_white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  alignment: Alignment.center,
                  child:Text('是这样的',style: TextStyle(fontFamily: 'LanSong',fontSize: 24.sp,color: ColorUtils.text_brown),)),//修改字体
            ),
            SizedBox(height: 80.w),
          ],
        ),
      ),
    );
  }
}
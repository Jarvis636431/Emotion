import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:emotion/utils/ColorUtils.dart';
import 'now_mood_page.dart';

class TodayMoodPage extends StatelessWidget {
  const TodayMoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background/bg_sad.png'),
          fit: BoxFit.fill,
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
          title: const Text('今日心情怎么样？',style: TextStyle(fontSize: 32,fontFamily: 'LanSong',color: ColorUtils.text_brown),),
        ),
        body: Column(
          children: [
            SizedBox(height: 50.w),//修改了这里的间距
            Center(
              child: Image.asset('assets/images/mbti_emoji/enf/enf1.png',width: 250.w,),
            ),
            Expanded(child: SizedBox(height: 20.w)),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NowMoodPage()));
              },
              child: Container(
                width: 200.h,
                height: 60.w,
                decoration: BoxDecoration(
                  color: ColorUtils.bg_white,
                  borderRadius: BorderRadius.circular(20.r),
                  boxShadow: const [
                    BoxShadow(
                      color: ColorUtils.text_brown,
                      offset: Offset(0,4), //阴影xy轴偏移量
                      blurRadius: 4.0, //阴影模糊程度
                      spreadRadius: 0.0, //阴影扩散程度
                    ),
                  ],
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

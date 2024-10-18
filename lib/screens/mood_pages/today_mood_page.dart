import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:emotion/utils/ColorUtils.dart';
import 'now_mood_page.dart';

class TodayMoodPage extends StatelessWidget {
  const TodayMoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        ///导出的背景有神秘阴影？？？
        image: const DecorationImage(
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
            Center(
              child: Image.asset('assets/images/mbti_emoji/enf/enf1.png'),
            ),
            Expanded(child: SizedBox(height: 20.w)),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NowMoodPage()));
              },
              child: const Text('是这样的'),
            )
          ],
        ),
      ),
    );
  }
}

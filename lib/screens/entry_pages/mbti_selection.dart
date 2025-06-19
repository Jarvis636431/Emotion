import 'package:emotion/home_page.dart';
import 'package:emotion/utils/ColorUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MBTISelectionPage extends StatefulWidget {
  const MBTISelectionPage({Key? key}) : super(key: key);

  @override
  _MBTISelectionPage createState() => _MBTISelectionPage();
}

class _MBTISelectionPage extends State<MBTISelectionPage> {

  final List<String> _imagePaths = [
    'assets/images/mbti_character/enf.png',
    'assets/images/mbti_character/ent.png',
    'assets/images/mbti_character/esj.png',
    'assets/images/mbti_character/esp.png',
    'assets/images/mbti_character/inf.png',
    'assets/images/mbti_character/int.png',
    'assets/images/mbti_character/isj.png',
    'assets/images/mbti_character/isp.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: RadialGradient(
              colors: [ColorUtils.bg_yellow, ColorUtils.bg_white],
              center: Alignment.center,
              radius: 1.5)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: ColorUtils.text_brown,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '请选择\n你的人格类型',
                style: TextStyle(
                    fontSize: 40.sp,
                    fontFamily: 'LanSong',
                    color: ColorUtils.text_brown),
              ),
              SizedBox(
                height: 30.w,
              ),
              //巧用center组件，直接放在屏幕中间
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 220.h,
                      child: PageView.builder(
                        itemCount: _imagePaths.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            _imagePaths[index],
                            width: 220.h,
                            height: 220.w,
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () async {
                        // 设置已登录
                        final prefs = await SharedPreferences.getInstance();
                        await prefs.setBool('isLoggedIn', true);
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => const HomePage()),
                          (route) => false,
                        );
                      },
                      child: Container(
                          width: 240.h,
                          height: 60.w,
                          decoration: BoxDecoration(
                              color: ColorUtils.bg_white,
                              borderRadius: BorderRadius.circular(20.r)),
                          alignment: Alignment.center,
                          child: Text(
                            '进入APP',
                            style: TextStyle(
                                fontSize: 32.sp,
                                fontFamily: 'LanSong',
                                color: ColorUtils.text_brown),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

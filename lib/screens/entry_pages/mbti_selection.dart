import 'package:emotion/utils/ColorUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MBTISelectionPage extends StatefulWidget {
  const MBTISelectionPage({Key? key}) : super(key: key);

  @override
  _MBTISelectionPage createState() => _MBTISelectionPage();
}

class _MBTISelectionPage extends State<MBTISelectionPage> {

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
                    InkWell(
                      onTap: () {
                        setState(() {});
                      },
                      child: Image.asset('assets/images/mbti_character/enf.png',
                          width: 220.h, height: 220.w),
                    ),
                    const SizedBox(
                      height: 20,
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

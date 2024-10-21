import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:emotion/utils/ColorUtils.dart';


class ReSetMbtiPage extends StatefulWidget {
  const ReSetMbtiPage({Key? key}) : super(key: key);

  @override
  _ReSetMbtiPageState createState() => _ReSetMbtiPageState();
}

class _ReSetMbtiPageState extends State<ReSetMbtiPage> {
  int _currentImageIndex = 0;
  final List<String> _images = [
    'assets/images/mbti_character/enf.png',
    'assets/images/mbti_character/ent.png',
    'assets/images/mbti_character/esj.png',
    'assets/images/mbti_character/esp.png',
    'assets/images/mbti_character/inf.png',
    'assets/images/mbti_character/int.png',
    'assets/images/mbti_character/isj.png',
    'assets/images/mbti_character/isp.png',

  ];

  void _showPreviousImage() {
    setState(() {
      _currentImageIndex = (_currentImageIndex - 1 + _images.length) % _images.length;
    });
  }

  void _showNextImage() {
    setState(() {
      _currentImageIndex = (_currentImageIndex + 1) % _images.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [ColorUtils.bg_yellow, ColorUtils.bg_white],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: ColorUtils.text_brown),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.transparent,
          title: const Text('请更换你的人格类型',
              style: TextStyle(
                  fontSize: 24,
                  color: ColorUtils.text_brown,
                  fontFamily: 'LanSong')),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  // color: ColorUtils.info_card_bg,
                  child: Image.asset(
                    _images[_currentImageIndex],
                    height: 500.h,
                    width: 500.h,
                  ),
                ),
              ),
              SizedBox(
                height: 40.w,
              ),
              Container(
                width: 300.h,
                height: 80.w,
                decoration: BoxDecoration(
                  color: ColorUtils.info_card_bg,
                  borderRadius: BorderRadius.circular(35.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(Icons.chevron_left, color: ColorUtils.text_brown, size: 40.h),
                      onPressed: _showPreviousImage,
                    ),
                    Text(
                      '左右滑动切换',
                      style: TextStyle(
                          fontSize: 32.sp,
                          color: ColorUtils.text_brown,
                          fontFamily: 'LanSong'),
                    ),
                    IconButton(
                      icon: Icon(Icons.chevron_right, color: ColorUtils.text_brown, size: 40.h),
                      onPressed: _showNextImage,
                    ),
                  ],
                ),
              ),
              Expanded(child: SizedBox()),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      '取消',
                      style: TextStyle(
                          fontSize: 20.sp, color: ColorUtils.text_brown),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        '确认',
                        style: TextStyle(
                            fontSize: 20.sp, color: ColorUtils.text_brown),
                      )),
                ],
              ),
              SizedBox(
                height: 20.w,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
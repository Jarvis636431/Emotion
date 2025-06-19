import 'package:emotion/utils/ColorUtils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:emotion/screens/entry_pages/mbti_selection.dart';

class NameAgeSelectionPage extends StatefulWidget {
  const NameAgeSelectionPage({super.key});

  @override
  _NameAgeSelectionPage createState() => _NameAgeSelectionPage();
}

enum Age { none, teen, young, adult }

class _NameAgeSelectionPage extends State<NameAgeSelectionPage> {
  Age _selectedAge = Age.none;

  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: RadialGradient(
              colors: [ColorUtils.bg_yellow, ColorUtils.bg_white],
              center: Alignment.center,
              radius: 1.5)),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: ColorUtils.text_brown,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '请问你叫？',
                  style: TextStyle(
                      fontSize: 40.sp,
                      fontFamily: 'LanSong',
                      color: ColorUtils.text_brown),
                ),
                Text('输入昵称并选择年龄段吧',
                    style: TextStyle(
                        color: ColorUtils.text_yellow, fontSize: 26.sp)),
                SizedBox(
                  height: 40.w,
                ),
                Center(
                  child: Column(
                    children: [
                      Container(
                        width: 220.h,
                        height: 60.w,
                        decoration: BoxDecoration(
                            color: ColorUtils.bg_white,
                            borderRadius: BorderRadius.circular(20.r)),
                        alignment: Alignment.center,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '请输入你的昵称',
                            hintStyle: TextStyle(
                              color: ColorUtils.text_brown,
                              fontSize:18.sp
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 60.w),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _selectedAge = _selectedAge == Age.teen ? Age.none : Age.teen;
                          });
                        },
                        child: Container(
                          width: 220.h,
                          height: 70.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              gradient: RadialGradient(
                                colors:
                                _selectedAge == Age.teen
                                    ? [ColorUtils.radial_stronger_yellow, ColorUtils.radial_strong_yellow]
                                    : [ColorUtils.radial_yellow, ColorUtils.radial_light_yellow],
                                center: Alignment.center,
                                radius: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(20.r)),
                          child: Row(
                            children: [
                              SizedBox(width: 60.w),
                              Expanded(
                                child: Text(
                                  '13-18岁',
                                  style: TextStyle(
                                      fontFamily: 'LanSong',
                                      fontSize: 32.sp,
                                      color: ColorUtils.text_brown),
                                ),
                              ),
                              Visibility(
                                  visible: _selectedAge == Age.teen,
                                  child: const Icon(Icons.check, color: ColorUtils.text_brown))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20.w),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _selectedAge = _selectedAge == Age.young   ? Age.none : Age.young;
                          });
                        },
                        child: Container(
                          width: 220.h,
                          height: 70.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              gradient: RadialGradient(
                                colors:
                                _selectedAge == Age.young
                                    ? [ColorUtils.radial_stronger_yellow, ColorUtils.radial_strong_yellow]
                                    : [ColorUtils.radial_yellow, ColorUtils.radial_light_yellow],
                                center: Alignment.center,
                                radius: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(20.r)),
                          child: Row(
                            children: [
                              SizedBox(width: 60.w),
                              Expanded(
                                child: Text(
                                  '19-25岁',
                                  style: TextStyle(
                                      fontFamily: 'LanSong',
                                      fontSize: 32.sp,
                                      color: ColorUtils.text_brown),
                                ),
                              ),
                              Visibility(
                                  visible: _selectedAge == Age.young,
                                  child: Icon(Icons.check, color: ColorUtils.text_brown))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20.w),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _selectedAge = _selectedAge == Age.adult ? Age.none : Age.adult;
                          });
                        },
                        child: Container(
                          width: 220.h,
                          height: 70.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              gradient: RadialGradient(
                                colors:
                                _selectedAge == Age.adult
                                    ? [ColorUtils.radial_stronger_yellow, ColorUtils.radial_strong_yellow]
                                    : [ColorUtils.radial_yellow, ColorUtils.radial_light_yellow],
                                center: Alignment.center,
                                radius: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(20.r)),
                          child: Row(
                            children: [
                              SizedBox(width: 60.w),
                              Expanded(
                                child: Text(
                                  '26-38岁',
                                  style: TextStyle(
                                      fontFamily: 'LanSong',
                                      fontSize: 32.sp,
                                      color: ColorUtils.text_brown),
                                ),
                              ),
                              Visibility(
                                  visible: _selectedAge == Age.adult,
                                  child: Icon(Icons.check, color: ColorUtils.text_brown))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 70.w),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const MBTISelectionPage()));
                        },
                        child: Container(
                            width: 240.h,
                            height: 60.w,
                            decoration: BoxDecoration(
                                color: ColorUtils.bg_white,
                                borderRadius: BorderRadius.circular(20.r)),
                            alignment: Alignment.center,
                            child: Text(
                              '下一步',
                              style: TextStyle(
                                  fontSize: 32.sp,
                                  fontFamily: 'LanSong',
                                  color: ColorUtils.text_brown),
                            )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

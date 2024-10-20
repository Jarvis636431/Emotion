import 'package:emotion/utils/ColorUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:emotion/screens/entry_pages/name_age_selection.dart';

class GenderSelectionPage extends StatefulWidget {
  const GenderSelectionPage({super.key});

  @override
  _GenderSelectionPage createState() => _GenderSelectionPage();
}

class _GenderSelectionPage extends State<GenderSelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: RadialGradient(
        colors: [ColorUtils.bg_yellow, ColorUtils.bg_white],
        center: Alignment.center,
        radius: 1.5,
      )),
      child: Scaffold(
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
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Hi,你的性别是？',
              style: TextStyle(
                  fontSize: 40.sp,
                  fontFamily: 'LanSong',
                  color: ColorUtils.text_brown),
            ),
            Text(
              '点击选择一下吧',
              style: TextStyle(color: ColorUtils.text_yellow, fontSize: 26.sp),
            ),
            SizedBox(height: 30.w),
            //巧用center组件，直接放在屏幕中间
            Center(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {});
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: ColorUtils.shadow, width: 5)),
                        child: Image.asset('assets/images/female.png')),
                  ),
                  SizedBox(height: 10.w),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.female,
                        color: ColorUtils.text_yellow,
                      ),
                      Text('女生')
                    ],
                  ),
                  SizedBox(height: 20.w),
                  InkWell(
                    onTap: () {
                      setState(() {});
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: ColorUtils.shadow, width: 5)),
                        child: Image.asset('assets/images/male.png')),
                  ),
                  SizedBox(height: 10.w),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.male,
                        color: ColorUtils.text_yellow,
                      ),
                      Text('男生')
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const NameAgeSelectionPage()));
                    },
                    child: Container(
                      width: 240.h,
                        height: 60.w,
                        decoration: BoxDecoration(
                          color: ColorUtils.bg_white,
                          borderRadius: BorderRadius.circular(20.r)
                        ),
                        alignment: Alignment.center,
                        child: Text('下一步',style: TextStyle(fontSize: 32.sp,fontFamily: 'LanSong',color:ColorUtils.text_brown),)),
                  ),
                  SizedBox(height: 40.h,)
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

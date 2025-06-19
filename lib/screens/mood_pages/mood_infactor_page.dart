import 'package:emotion/screens/mood_pages/check_mood_page.dart';
import 'package:flutter/material.dart';
import 'package:emotion/utils/ColorUtils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoodInfactorPage extends StatefulWidget {
  const MoodInfactorPage({Key? key}) : super(key: key);

  @override
  _MoodInfactorPageState createState() => _MoodInfactorPageState();
}

class _MoodInfactorPageState extends State<MoodInfactorPage> {
  int? _selectedIndex;

  final List<String> imagePaths = [
    'assets/images/mood_infactor/academic.png',
    'assets/images/mood_infactor/family.png',
    'assets/images/mood_infactor/food.png',
    'assets/images/mood_infactor/health.png',
    'assets/images/mood_infactor/others.png',
    'assets/images/mood_infactor/social.png',
    'assets/images/mood_infactor/travel.png',
    'assets/images/mood_infactor/weather.png',
    'assets/images/mood_infactor/work.png',
  ];

  final List<String> imageLabels = [
    '工作',
    '家庭',
    '社交',
    '学业',
    '饮食',
    '天气',
    '旅行',
    '健康',
    '其他',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/images/background/otherbackgrounds/infactor_bg.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon:
                const Icon(Icons.arrow_back_ios, color: ColorUtils.text_brown),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('是什么影响了你的情绪？',
              style: TextStyle(
                  fontSize: 32.sp,
                  fontFamily: 'LanSong',
                  color: ColorUtils.text_brown)),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50.w),
              SizedBox(
                width: 400.h,
                height: 400.w,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10.h,
                    mainAxisSpacing: 10.w,
                    childAspectRatio: 0.9,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: imagePaths.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              _selectedIndex = index;
                            });
                          },
                          child: Container(
                            width: 100.h,
                            height: 100.w,
                            decoration: BoxDecoration(
                              color: _selectedIndex == index
                                  ? ColorUtils.bg_yellow
                                  : ColorUtils.bg_white,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            alignment: Alignment.center,
                            child: Image.asset(imagePaths[index]),
                          ),
                        ),
                        Text(imageLabels[index],
                            style: TextStyle(
                                fontFamily: 'LanSong',
                                fontSize: 14.sp,
                                color: ColorUtils.text_brown)),
                      ],
                    );
                  },
                ),
              ),
              const Expanded(child: SizedBox()),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MoodCheckPage()));
                },
                child: Container(
                  width: 200.h,
                  height: 60.w,
                  decoration: BoxDecoration(
                    color: ColorUtils.bg_white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  alignment: Alignment.center,
                  child: Text('是这样的',
                      style: TextStyle(
                          fontFamily: 'LanSong',
                          fontSize: 24.sp,
                          color: ColorUtils.text_brown)),
                ),
              ),
              SizedBox(height: 80.w),
            ],
          ),
        ),
      ),
    );
  }
}

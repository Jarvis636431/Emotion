import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:emotion/utils/ColorUtils.dart';

class NotePage extends StatefulWidget {
  const NotePage({super.key});

  @override
  _NotePageState createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [ColorUtils.bg_white, ColorUtils.bg_yellow],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
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
            title: Text(
              '日记本',
              style: TextStyle(
                  fontSize: 24.sp,
                  color: ColorUtils.text_brown,
                  fontFamily: 'LanSong'),
            ),
            centerTitle: true,
          ),
          //gridview不需要包裹在container中？，修改布局
          body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.0,
            ),
            itemBuilder: (context, index) {
              if (index == 0) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0),
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/notebackground.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add,
                            size: 50.w, color: ColorUtils.bg_white),
                        SizedBox(height: 10.w),
                        Text(
                          '写笔记',
                          style: TextStyle(
                              fontSize: 15.sp,),
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                ///如果按照设计图来封面会不会很空
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0),
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/notebackground.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '2021-04-22',
                          style: TextStyle(
                              fontSize: 20.sp,
                              color: ColorUtils.text_brown,
                              fontFamily: 'LanSong'),
                        ),
                        SizedBox(height: 10.w),
                        Text(
                          '今天天气晴朗，心情愉悦',
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: ColorUtils.text_brown,
                              fontFamily: 'LanSong'),
                        ),
                      ],
                    ),
                  ),
                );
              }
            },
            itemCount: 9,
          )),
    );
  }
}

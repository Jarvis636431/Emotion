import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:emotion/utils/ColorUtils.dart';

class PictureChoosePage extends StatefulWidget {
  @override
  _PictureChoosePageState createState() => _PictureChoosePageState();
}
class _PictureChoosePageState extends State<PictureChoosePage> {

  String info = '当前图片尚未解锁哦';
  toastInfo(String info) {
    print(info);
  }

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
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('选择图片进行填充吧',
            style: TextStyle(
                fontSize: 24.sp,
                color: ColorUtils.text_brown,
                fontFamily: 'LanSong'),
          ),
          centerTitle: true,
        ),
      ),
    );
  }
}
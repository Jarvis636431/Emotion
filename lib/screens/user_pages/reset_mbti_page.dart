import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:emotion/utils/ColorUtils.dart';


class ReSetMbtiPage extends StatefulWidget {
  const ReSetMbtiPage({Key? key}) : super(key: key);

  @override
  _ReSetMbtiPageState createState() => _ReSetMbtiPageState();
}

class _ReSetMbtiPageState extends State<ReSetMbtiPage> {
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
          ///设计图里的返回键？
          leading: IconButton(
            icon:
                const Icon(Icons.arrow_back_ios, color: ColorUtils.text_brown),
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
                child: Image.asset(
                  'assets/images/mbti_character/enf.png',
                ),
              ),
              SizedBox(
                height: 40.w,
              ),
              Container(
                //设置corssAxisAlignment为center后未居中的原因就是嵌套了container，未设计长宽的情况下container会自适应子组件的大小，而row是默认拉满的
                width: 300.h,
                height: 80.w,
                decoration: BoxDecoration(
                  color: ColorUtils.info_card_bg,
                  borderRadius: BorderRadius.circular(35.r),
                  // border: Border.all(color: ColorUtils.text_brown, width: 2),边框设置
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.chevron_left,
                      color: ColorUtils.text_brown,
                      size: 40.h,
                    ),
                    ///具体人格在哪里显示呢？
                    Text(
                      '左右滑动切换',
                      style: TextStyle(
                          fontSize: 32.sp,
                          color: ColorUtils.text_brown,
                          fontFamily: 'LanSong'),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: ColorUtils.text_brown,
                      size: 40.h,
                    ),
                  ],
                ),
              ),
              Expanded(child: SizedBox()),

              ///这样的取消确认方式合理么？
              Row(
                children: [
                  Text(
                    '取消',
                    style: TextStyle(
                        fontSize: 20.sp, color: ColorUtils.text_brown),
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

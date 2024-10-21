import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:emotion/utils/ColorUtils.dart';

class AvatarPage extends StatefulWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  _AvatarPageState createState() => _AvatarPageState();
}

class _AvatarPageState extends State<AvatarPage> {
  void _showBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 160.w,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: Column(
              children: [
                ListTile(
                  title: const Text('拍照',textAlign: TextAlign.center,),
                  //可以直接用textAlign的属性来控制文本的位置，而且listtile本身有ontap属性
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('从相册中选择',textAlign: TextAlign.center,),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          );
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
                icon: const Icon(Icons.arrow_back_ios,
                    color: ColorUtils.text_brown),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              backgroundColor: Colors.transparent,
              title: const Text('个人头像',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'LanSong',
                      color: ColorUtils.text_brown)),
              centerTitle: true,
              actions: [
                InkWell(
                    onTap: _showBottomSheet,
                    child: Padding(
                      padding: EdgeInsets.only(right: 10.h),
                      child:
                          Icon(Icons.more_horiz, color: ColorUtils.text_brown),
                    ))
              ],
            ),
            body: Center(
              //center还是有用的，用于把column放在中间
              child: Column(
                children: [
                  SizedBox(
                    height: 20.w,
                  ),
                  CircleAvatar(
                    radius: 100.h,
                    backgroundImage: AssetImage('assets/images/female.png'),
                  ),
                ],
              ),
            )));
  }
}

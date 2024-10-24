import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:emotion/commons/providers.dart';
import 'package:emotion/utils/ColorUtils.dart';
import 'package:provider/provider.dart';

class WriteNotePage extends StatefulWidget {
  const WriteNotePage({super.key});

  @override
  _WriteNotePageState createState() => _WriteNotePageState();
}

class _WriteNotePageState extends State<WriteNotePage> {
  String? _droppedEmoji;

  @override
  Widget build(BuildContext context) {
    List<String> tags = ['#开心', '#开心', '#开心', '#开心', '#开心'];

    final timeDateProvider = Provider.of<TimeDateProvider>(context);

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
            timeDateProvider.currentDate,
            style: TextStyle(
              fontSize: 24.sp,
              color: ColorUtils.text_brown,
              fontFamily: 'LanSong',
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.check,
                color: ColorUtils.text_brown,
              ),
              onPressed: () {
                // Save note
              },
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DragTarget<String>(
                onAccept: (data) {
                  setState(() {
                    _droppedEmoji = data;
                  });
                },
                builder: (context, candidateData, rejectedData) {
                  return Container(
                    height: 0.5.sh,
                    color: ColorUtils.bg_yellow,
                    child: _droppedEmoji != null
                        ? Center(
                            child: Image.asset(
                              _droppedEmoji!,
                              width: 50.h,
                            ),
                          )
                        : Center(
                            child: Text(
                              '拖动表情到这里',
                              style: TextStyle(
                                fontSize: 20.sp,
                                color: ColorUtils.text_brown,
                              ),
                            ),
                          ),
                  );
                },
              ),
              SizedBox(height: 25.w),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 25.w,
                    width: 350.w,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: tags.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 50.h,
                          margin: EdgeInsets.symmetric(horizontal: 10.w),
                          decoration: BoxDecoration(
                            color: ColorUtils.tag_bg,
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            tags[index],
                            style: TextStyle(
                              fontFamily: 'LanSong',
                              fontSize: 20.sp,
                              color: ColorUtils.text_brown,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25.w),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildDraggableEmoji(
                      'assets/images/function/note_icons/note_icon_angry.png'),
                  _buildDraggableEmoji(
                      'assets/images/function/note_icons/note_icon_sad.png'),
                  _buildDraggableEmoji(
                      'assets/images/function/note_icons/note_icon_normal.png'),
                  _buildDraggableEmoji(
                      'assets/images/function/note_icons/note_icon_clever.png'),
                  _buildDraggableEmoji(
                      'assets/images/function/note_icons/note_icon_happy.png'),
                ],
              ),
              SizedBox(height: 15.w),
              Text(
                '（可点击拖拽安放贴纸）',
                style: TextStyle(fontSize: 12.sp),
              ),
              SizedBox(height: 35.w),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/function/note_icons/rewrite.png',
                        width: 35.h,
                      ),
                      SizedBox(height: 5.w),
                      Text(
                        '重写',
                        style: TextStyle(fontSize: 12.sp),
                      ),
                    ],
                  ),
                  SizedBox(width: 20.w),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/function/note_icons/import_image.png',
                        width: 40.h,
                      ),
                      SizedBox(height: 5.w),
                      Text(
                        '导入图片',
                        style: TextStyle(fontSize: 12.sp),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDraggableEmoji(String assetPath) {
    return Draggable<String>(
      data: assetPath,
      feedback: Image.asset(
        assetPath,
        width: 50.h,
      ),
      childWhenDragging: Opacity(
        opacity: 0.5,
        child: Image.asset(
          assetPath,
          width: 50.h,
        ),
      ),
      child: Image.asset(
        assetPath,
        width: 50.h,
      ),
    );
  }
}

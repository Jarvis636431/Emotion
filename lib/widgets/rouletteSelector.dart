import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:emotion/utils/ColorUtils.dart';

class RouletteSelector extends StatefulWidget {
  final List<String> moodIcons; // 图片路径
  final List<String> moodNames; // 名称
  final int initialIndex;
  final ValueChanged<int> onChanged;

  const RouletteSelector({
    Key? key,
    required this.moodIcons,
    required this.moodNames,
    this.initialIndex = 2,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<RouletteSelector> createState() => _RouletteSelectorState();
}

class _RouletteSelectorState extends State<RouletteSelector> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16.h, bottom: 32.h),
      width: double.infinity,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          // 半圆背景
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CustomPaint(
              size: Size(1.sw, 180.w),
              painter: _HalfCirclePainter(),
            ),
          ),
          // 轮盘选项
          SizedBox(
            width: 1.sw,
            height: 180.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: List.generate(widget.moodIcons.length, (index) {
                final isSelected = index == selectedIndex;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                    widget.onChanged(index);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: isSelected
                              ? [
                                  BoxShadow(
                                    color:
                                        ColorUtils.text_brown.withOpacity(0.2),
                                    blurRadius: 12,
                                    spreadRadius: 2,
                                  )
                                ]
                              : [],
                        ),
                        child: Image.asset(
                          widget.moodIcons[index],
                          width: isSelected ? 64.w : 48.w,
                          height: isSelected ? 64.w : 48.w,
                        ),
                      ),
                      SizedBox(height: 8.w),
                      Text(
                        widget.moodNames[index],
                        style: TextStyle(
                          fontSize: isSelected ? 20.sp : 16.sp,
                          color: isSelected
                              ? ColorUtils.text_brown
                              : ColorUtils.text_brown.withOpacity(0.5),
                          fontWeight:
                              isSelected ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class _HalfCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFFFF3C1)
      ..style = PaintingStyle.fill;
    final rect = Rect.fromLTWH(0, 0, size.width, size.height * 2);
    canvas.drawArc(rect, 3.14, 3.14, false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

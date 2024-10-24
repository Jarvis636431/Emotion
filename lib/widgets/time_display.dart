import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimeDateDisplay extends StatefulWidget {
  const TimeDateDisplay({super.key});

  @override
  _TimeDateDisplayState createState() => _TimeDateDisplayState();
}

class _TimeDateDisplayState extends State<TimeDateDisplay> {
  String _currentTime = '';
  String _currentDate = '';
  String _currentDayOfWeek = '';

  @override
  void initState() {
    super.initState();
    _updateTimeDate();
    Timer.periodic(const Duration(seconds: 1), (Timer t) => _updateTimeDate());
  }

  void _updateTimeDate() {
    final now = DateTime.now();
    setState(() {
      _currentTime = now.toLocal().toString().split(' ')[1].split('.')[0];
      _currentDate = '${now.year}-${now.month}-${now.day}';
      _currentDayOfWeek = _getDayOfWeek(now.weekday);
    });
  }

  String _getDayOfWeek(int day) {
    switch (day) {
      case 1:
        return '星期一';
      case 2:
        return '星期二';
      case 3:
        return '星期三';
      case 4:
        return '星期四';
      case 5:
        return '星期五';
      case 6:
        return '星期六';
      case 7:
        return '星期日';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 225.w,
      child: Row(
        children: [
          Text(
            _currentDate,
            style: TextStyle(fontSize: 16.sp),
          ),
          SizedBox(width: 10.w),
          Text(
            _currentTime,
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 10.w),
          Text(
            _currentDayOfWeek,
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
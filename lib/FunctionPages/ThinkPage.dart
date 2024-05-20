import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FunctionsPages extends StatefulWidget {
  @override
  _FunctionsPagesState createState() => _FunctionsPagesState();
}

class _FunctionsPagesState extends State<FunctionsPages> {

  Timer? _timer;
  int _start = 0;
  bool _isRunning = false;

  void _startTimer() {
    if (_isRunning) return;
    setState(() {
      _isRunning = true;
    });
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _start++;
      });
    });
  }
  void _pauseTimer() {
    if (!_isRunning) return;
    setState(() {
      _isRunning = false;
    });
    _timer?.cancel();
  }

  void _resetTimer() {
    setState(() {
      _isRunning = false;
      _start = 0;
    });
    _timer?.cancel();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '$minutes:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('冥想'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              _resetTimer();
            },
          ),
        ],
      ),
      body: Column(children: [
        Text('冥想页面'),
        Stack(
          children: [
            Container(
              width: 200.w,
              height: 200.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              child: Center(
                child: Text(
                  _formatTime(_start),
                  style: TextStyle(
                    fontSize: 24.sp,
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: CircularProgressIndicator(
                value: _start / 60,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                backgroundColor: Colors.grey[300],
                strokeWidth: 10,
              ),
            ),
          ],
        ),
        ButtonBar(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/meditation');
              },
              child: Icon(Icons.play_arrow),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/meditation');
              },
              child: Icon(Icons.play_arrow),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/meditation');
              },
              child: Icon(Icons.play_arrow),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            _isRunning ? _pauseTimer() : _startTimer();
          },
          child: Text('开始冥想'),
        ),
      ]),
    );
  }
}
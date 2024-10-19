import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:audioplayers/audioplayers.dart';

import 'package:emotion/utils/ColorUtils.dart';

class ThinkPage extends StatefulWidget {
  @override
  _ThinkPageState createState() => _ThinkPageState();
}

class _ThinkPageState extends State<ThinkPage> {
  ///这个居然能用，我靠！神秘，我半年前的代码水平

  Timer? _timer;
  int _start = 0;
  bool _isRunning = false;

  ///开始计时
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

  ///暂停计时
  void _pauseTimer() {
    if (!_isRunning) return;
    setState(() {
      _isRunning = false;
    });
    _timer?.cancel();
  }

  ///重置计时
  void _resetTimer() {
    setState(() {
      _isRunning = false;
      _start = 0;
    });
    _timer?.cancel();
  }

  ///格式化时间
  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '$minutes:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  final AudioPlayer _audioPlayer = AudioPlayer();
  final List<String> _songs = [
    'assets/songs/meditation.mp3',
    'assets/songs/meditation2.mp3',
    'assets/songs/meditation3.mp3',
  ];

  int _currentSongIndex = 0;
  bool _isPlaying = false;

  ///播放歌曲/暂停歌曲
  void _playPause() {
    if (_isPlaying) {
      _audioPlayer.pause();
    } else {
      _audioPlayer.play(_songs[_currentSongIndex] as Source);
    }
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  ///下一首
  void _next() {
    if (_currentSongIndex < _songs.length - 1) {
      _currentSongIndex++;
    } else {
      _currentSongIndex = 0;
    }
    _audioPlayer.play(_songs[_currentSongIndex] as Source);
    setState(() {
      _isPlaying = true;
    });
  }

  ///上一首
  void _previous() {
    if (_currentSongIndex > 0) {
      _currentSongIndex--;
    } else {
      _currentSongIndex = _songs.length - 1;
    }
    _audioPlayer.play(_songs[_currentSongIndex] as Source);
    setState(() {
      _isPlaying = true;
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _audioPlayer.dispose();
    super.dispose();
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
            icon: const Icon(
              Icons.arrow_back_ios,
              color: ColorUtils.text_brown,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            '冥想',
            style: TextStyle(
                fontSize: 24.sp,
                fontFamily: 'LanSong',
                color: ColorUtils.text_brown),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh, color: ColorUtils.text_brown),
              onPressed: () {
                _resetTimer();

                ///重置时间
              },
            ),
          ],
        ),
        body: Column(children: [
          // Stack(
          //   ///圆形指示器
          //   children: [
          //     Container(
          //       width: 200.w,
          //       height: 200.h,
          //       decoration: BoxDecoration(
          //         shape: BoxShape.circle,
          //         border: Border.all(
          //           color: Colors.black,
          //           width: 2,
          //         ),
          //       ),
          //     ),
          //     Positioned.fill(
          //       child: CircularProgressIndicator(
          //         value: _start / 60,
          //         valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          //         backgroundColor: Colors.grey[300],
          //         strokeWidth: 10,
          //       ),
          //     ),
          //   ],
          // ),
          Image(image:AssetImage('assets/images/mbti_character/enf.png'),width: 250.w),
          Text(
            //格式换之后的时间
            _formatTime(_start),
            style: TextStyle(
              fontSize: 45.sp,
              fontFamily: 'LanSong',
              color: ColorUtils.text_brown,
            ),
          ),
          SizedBox(height: 20.w),
          Text('正在播放\n音乐${_currentSongIndex + 1}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.sp,
                fontFamily: 'LanSong',
                color: ColorUtils.text_brown,
              )),
          //buttonbar的用法
          SizedBox(height: 20.w),
          Row(
            //要调整位置，实际是要调整row里面元素的位置，而不是row本身的位置，因为row是无限的
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  _previous();
                },
                //使用矢量画法
                child: Transform.rotate(
                  angle: 3.14,
                  child: Icon(
                    Icons.double_arrow_rounded,
                    color: ColorUtils.text_brown,
                    size: 40.sp,
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  _playPause();
                },
                icon: Icon(_isPlaying ? Icons.pause : Icons.play_arrow,
                    color: ColorUtils.text_brown, size: 40.sp),
              ),
              InkWell(
                onTap: () {
                  _next();
                },
                child: Icon(
                  Icons.double_arrow_rounded,
                  color: ColorUtils.text_brown,
                  size: 40.sp,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.w),
          InkWell(
            onTap: () {
              _isRunning ? _pauseTimer() : _startTimer();
            },
            child: Container(
              width: 300.w,
              height: 70.h,
              decoration: BoxDecoration(
                color: ColorUtils.bg_white,
                borderRadius: BorderRadius.circular(35.r),
              ),
              alignment: Alignment.center,
              child: Text(
                _isRunning ? '暂停冥想' : '开始冥想',
                style: TextStyle(
                  fontSize: 32.sp,
                  color: ColorUtils.text_brown,
                  fontFamily: 'LanSong',
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

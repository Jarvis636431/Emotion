import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:audioplayers/audioplayers.dart';

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

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '$minutes:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  AudioPlayer _audioPlayer = AudioPlayer();
  List<String> _songs = [
    'assets/songs/meditation.mp3',
    'assets/songs/meditation2.mp3',
    'assets/songs/meditation3.mp3',
  ];
  int _currentSongIndex = 0;
  bool _isPlaying = false;

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
        Text(
          '正在播放音乐${_currentSongIndex + 1}'
        ),
        ButtonBar(
          children: [
            ElevatedButton(
              onPressed: () {
                _previous();
              },
              child: Icon(Icons.arrow_left),
            ),
            IconButton(
              onPressed: () {
                _playPause();
              },
              icon: Icon(_isPlaying ? Icons.pause : Icons.play_arrow),
            ),
            ElevatedButton(
              onPressed: () {
                _next();
              },
              child: Icon(Icons.arrow_right),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            _isRunning ? _pauseTimer() : _startTimer();
          },
          child: Text(
            _isRunning ? '暂停冥想' : '开始冥想',
          ),
        ),
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DailySentencePage extends StatefulWidget {
  @override
  _DailySentencePageState createState() => _DailySentencePageState();
}

class _DailySentencePageState extends State<DailySentencePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: Text('我收藏的话'),
        ),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text('2024.3.21'),
              ),
              Align(
                alignment: Alignment.center,
                child: Text('谁说我没有死过？出生以前，太阳已无数次起落，悠久的时光被悠久的虚无吞井，又以我生日的名义卷土重来。'),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text('————《病隙随笔》'),
              ),
            ],
          ),
          ///TODO：实现收藏的话实时刷新，并且实现翻页的动画效果
          Stack(children: [],)
        ],
      ),
    );
  }
}

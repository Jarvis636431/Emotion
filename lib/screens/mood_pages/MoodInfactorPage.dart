import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoodInfactorPage extends StatelessWidget {
  const MoodInfactorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: const Text('是什么影响了你的情绪？'),
      ),
      body: Column(
        children: [
          GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10.w,
                mainAxisSpacing: 10.h,
                childAspectRatio: 3,
            ),
            children: [
              GestureDetector(
                onTap: () {
                },
                child: Column(
                  children: [
                    Image.asset('assets/images/work.png'),
                    Text('工作'),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                },
                child: Column(
                  children: [
                    Image.asset('assets/images/family.png'),
                    Text('家庭'),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                },
                child: Column(
                  children: [
                    Image.asset('assets/images/friend.png'),
                    Text('人际关系'),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                },
                child: Column(
                  children: [
                    Image.asset('assets/images/study.png'),
                    Text('学业'),
                  ],
                ),
              ),
              GestureDetector(
                onTap:(){
                },
                child: Column(
                  children: [
                    Image.asset('assets/images/food.png'),
                    Text('食物'),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                },
                child: Column(
                  children: [
                    Image.asset('assets/images/partner.png'),
                    Text('伴侣'),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                },
                child: Column(
                  children: [
                    Image.asset('assets/images/travel.png'),
                    Text('旅行'),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                },
                child: Column(
                  children: [
                    Image.asset('assets/images/sport.png'),
                    Text('运动'),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                },
                child: Column(
                  children: [
                    Image.asset('assets/images/others.png'),
                    Text('其他'),
                  ],
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/age');
            },
            child: Text('下一步'),
          ),
        ],
      ),
      );
}
}
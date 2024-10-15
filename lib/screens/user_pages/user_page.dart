import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:emotion/screens/user_pages/settings_page.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsPage()),
                  //MeterialPageRoute只是路由手段，push才是方法
                );
              },
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/female.png',
                    width: 120.h,
                  ),
                  Column(children: [
                    Text(
                      '菠萝小姐',
                      style: TextStyle(fontSize: 23.sp),
                    ),
                    Text(
                      '本小姐还没有想到个性签名',
                      style: TextStyle(fontSize: 10.sp),
                    ),
                  ]),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text('每日一言收藏'),
              Container(
                width: 600.h,
                height: 100.w,
                decoration: BoxDecoration(
                  color: Colors.yellow[200],
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(20),
                ),
                child:Text('每日一言收藏'),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text('测试')),
              Container(
                height: 200.h,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 300.h,
                      decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/images/testpic1.png'),
                          Text('测一测你的MBTI人格吧'),
                        ],
                      ),
                    ),
                    SizedBox(width: 20.h),
                    Container(
                      width: 300.h,
                      decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/images/testpic2.png'),
                          Text('测试'),
                        ],
                      ),
                    ),                ],
                ),
              ),

            ],
          ),
        ));
  }
}

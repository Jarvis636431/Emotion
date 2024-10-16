import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventLogPage extends StatefulWidget {
  @override
  _EventLogPageState createState() => _EventLogPageState();
}

class _EventLogPageState extends State<EventLogPage> {
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFEFA),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('新的事件'),
            Row(
              children: [
                Container(
                  width: 200.h,
                  //输入框需要父组件设置约束
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: '事件',
                    ),
                  ),
                ),
                Container(
                  child: Icon(Icons.add_circle),
                )
              ],
            ),
            SizedBox(
              height: 20.w,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      child: Column(children: [
                        // Image.asset()
                        Text('吃饭')
                      ]),
                    ),
                    Icon(Icons.add_circle)
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20.w,
            ),
            const Text('进行中的目标'),
            // /加入滚动事件 single scroll/column等的嵌套层级
            //关键在于container的自适应高度，滚动的话内嵌listbview即可
            Container(
              height: 500.w,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              ),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('item $index'),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

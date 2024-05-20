import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PendingPage extends StatefulWidget {
  @override
  _PendingPageState createState() => _PendingPageState();
}

class _PendingPageState extends State<PendingPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text('事件记录'),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(
                  child: Row(
                    children: [
                      Icon(Icons.access_time),
                      Text('事件记录'),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [
                      Icon(Icons.check),
                      Text('每日总结'),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [
                      Icon(Icons.done_all),
                      Text('提醒事项'),
                    ],
                  )
                ),
              ],
            )),
        body: Center(
          child: TabBarView(children: [
            Container(
              color: Colors.red,
              child: Center(
                child: Text('待处理'),
              ),
            ),
            Container(
              color: Colors.green,
              child: Center(
                child: Text('已处理'),
              ),
            ),
            Container(
              color: Colors.blue,
              child: Center(
                child: Text('已完成'),

              ),
            ),
          ]),
        ),
      ),
    );
  }
}

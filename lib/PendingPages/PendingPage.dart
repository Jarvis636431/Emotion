import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PendingPage extends StatefulWidget {
  @override
  _PendingPageState createState() => _PendingPageState();
}

class _PendingPageState extends State<PendingPage> {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: ScrollableState());
  }
  @override
  void dispose() {
    tabController.dispose();
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
        title: Text('事件记录'),
        bottom: TabBar(
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
              text: '已处理',
            ),
            Tab(
              text: '已完成',
            ),
          ],
        )
      ),
      body: Center(
        child: PageView(children:[
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
    );
  }
}

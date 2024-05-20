import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewReminder extends StatefulWidget {
  @override
  _NewReminderState createState() => _NewReminderState();
}

class _NewReminderState extends State<NewReminder> {
  bool _isSwitched = false;

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
        title: Text('新建提醒'),
        actions: [
          TextButton(
            child: Text('完成'),
            onPressed: () {
              //Save the reminder
            },
          ),
        ],
      ),
      body: Column(children: [
        const Text('给提醒命名'),
        Row(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: '提醒名称',
              ),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.add))
          ],
        ),
        Text('提醒日期'),
        DefaultTabController(
          length: 3,
          child: Column(
            children: [
              TabBar(
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
                  )),
                ],
              ),
              TabBarView(children: [
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
            ],
          ),
        ),
        DefaultTabController(
          length: 3,
          child: Column(
            children: [
              TabBar(
                tabs: [
                  Tab(
                    child: Row(
                      children: [
                        Icon(Icons.access_time),
                        Text('响一次'),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: [
                        Icon(Icons.check),
                        Text('工作日响铃'),
                      ],
                    ),
                  ),
                  Tab(
                      child: Row(
                      children: [
                        Icon(Icons.done_all),
                        Text('自定义'),
                    ],
                  )),
                ],
              ),
              TabBarView(children: [
                Container(
                  color: Colors.red,
                  child: Center(
                    child: Text(''),
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: Center(
                    child: Text(''),
                  ),
                ),
                Container(
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Text('响铃重复日期'),
                      Text('重复日期'),
                      Row(),
                      Row(
                        children: [
                          Text('法定节假日不放假'),
                          Switch(
                              value: _isSwitched,
                              onChanged: (value) {
                                setState(() {
                                  _isSwitched = value;
                                });
                              }),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            ],
          ),
        ),
        Text('激励语'),
        TextField(
          decoration: InputDecoration(
            hintText: '写下一段激励自己的话吧~',
          ),
        ),
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewReminder extends StatefulWidget {
  const NewReminder({super.key});

  @override
  _NewReminderState createState() => _NewReminderState();
}

class _NewReminderState extends State<NewReminder> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('新建提醒'),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('完成'),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('给提醒命名'),
            Row(
              children: [
                Container(
                  width: 280.h,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10.r)),
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: '提醒名称',
                    ),
                  ),
                ),
                Expanded(child: SizedBox()),
                Container(
                  child: const Icon(Icons.add),
                )
              ],
            ),
            const Text('提醒日期'),
            Row(),
            const Text('响铃重复日期'),
            Row(),
            const Text('激励语'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('法定节假日不提醒'),
                Switch(
                  value: _isObscure,
                  onChanged: (value) {
                    setState(() {
                      _isObscure = value;});
                  },
                )
              ],
            ),
            Container(
              height: 100.w,
              child: TextField(
                decoration: const InputDecoration(
                  labelText: '激励语',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

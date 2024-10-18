import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReSetMbtiPage extends StatefulWidget {
  const ReSetMbtiPage({Key? key}) : super(key: key);

  @override
  _ReSetMbtiPageState createState() => _ReSetMbtiPageState();
}

class _ReSetMbtiPageState extends State<ReSetMbtiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ReSet MBTI'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

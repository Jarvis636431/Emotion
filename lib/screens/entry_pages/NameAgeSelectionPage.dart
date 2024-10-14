import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:emotion/screens/entry_pages/AvatarMBTISelection.dart';

class NameAgeSelectionPage extends StatelessWidget {
  const NameAgeSelectionPage({Key? key}) : super(key: key);

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
        title: Text('请问你叫？'),
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '输入昵称并选择年龄段吧',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '请输入你的昵称',
              ),
            ),
            ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Container(
                  child: Text('13-18岁'),
                ),
                Container(
                  child: Text('19-25岁'),
                ),
                Container(
                  child: Text('21-30岁'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoodInfactorPage extends StatelessWidget {
  const MoodInfactorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      ///解决背景变暗的问题
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/images'
              '/background/otherbackgrounds/infactorBackground.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('是什么影响了你的情绪？'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.yellow,
              width: 400.h,
              height: 400.w,
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                ///自定义组件导入图片+文字
                children: const [
                  Text('工作'),
                  Text('学习'),
                  Text('生活'),
                  Text('人际关系'),
                  Text('健康'),
                  Text('其他'),
                ],
              ),
            ),
            Expanded(child: SizedBox()),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MoodInfactorPage()));
              },
              child: const Text('是这样的'),
            )
          ],
        ),
      ),
    );
  }
}

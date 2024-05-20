import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FunctionsPage extends StatefulWidget {
  @override
  _FunctionsPageState createState() => _FunctionsPageState();
}

class _FunctionsPageState extends State<FunctionsPage> {
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
        title: const Text('放松一下！'),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/coloring');
            },
            child: Row(children: [
              Column(
                children: [
                  Text('插画填色游戏'),
                  Divider(),
                  Text('"将自己的故事和想法记录下来抒发情感吧"'),
                  Row(
                    children: [
                      Container(
                        child: Text('#为您推荐'),
                      ),
                      Container(
                        child: Text('美术疗愈'),
                      ),
                    ],
                  )
                ],
              ),
              Image.asset('assets/images/coloring.png'),
            ]),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/coloring');
            },
            child: Row(children: [
              Column(
                children: [
                  Text('白噪音冥想'),
                  Divider(),
                  Text('"将自己的故事和想法记录下来抒发情感吧"'),
                  Row(
                    children: [
                      Container(
                        child: Text('#为您推荐'),
                      ),
                      Container(
                        child: Text('音乐疗愈'),
                      ),
                    ],
                  )
                ],
              ),
              Image.asset('assets/images/coloring.png'),
            ]),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/coloring');
            },
            child: Row(children: [
              Column(
                children: [
                  Text('写日记'),
                  Divider(),
                  Text('"将自己的故事和想法记录下来抒发情感吧"'),
                  Row(
                    children: [
                      Container(
                        child: Text('#为您推荐'),
                      ),
                      Container(
                        child: Text('文字疗愈'),
                      ),
                    ],
                  )
                ],
              ),
              Image.asset('assets/images/coloring.png'),
            ]),
          ),
          Image.asset('assets/images/coloring.png'),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:emotion/UserPages/UserPage.dart';
import 'package:flutter/widgets.dart';

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
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
          backgroundColor: Theme.of(context).colorScheme.secondary,
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {},
                  child: Container(child: Image.asset('assets/images/'))),
              Column(
                children: [
                  Text('菠萝小姐'),
                  Text('本小姐还没有想到个性签名'),
                ],
              )
            ],
          ),
          Text('每日一言收藏'),
          Container(),
          Text('测试'),
          ListView(scrollDirection: Axis.horizontal, children: [
            GestureDetector(
                child: Container(
                  child: Row(
                    children: [
                    Image.asset(''),
                    Text('测一测你的mbti人格吧'),
                ],
              ),
            )),
            GestureDetector(
                child: Container(
                  child: Row(
                    children: [
                      Image.asset(''),
                      Text('测一测你的mbti人格吧'),
                    ],
                  ),
                ))
          ])
        ]));
  }
}

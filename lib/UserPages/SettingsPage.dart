import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:emotion/UserPages/UserPage.dart';
import 'package:flutter/widgets.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
            Text('设置'),
          ],
          backgroundColor: Theme.of(context).colorScheme.secondary,
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text('基本信息'),
            ListView(
            children: [
              GestureDetector(
                  onTap: () {},
                  child: const Row(
                      children:[
                      Text('头像'),
                      Icon(Icons.arrow_forward)
                  ])
              ),
              GestureDetector(
                  onTap: () {},
                  child: const Row(
                      children:[
                        Text('昵称'),
                        Icon(Icons.arrow_forward)
                      ])
              ),
              GestureDetector(
                  onTap: () {},
                  child: const Row(
                      children:[
                        Text('个性签名'),
                        Icon(Icons.arrow_forward)
                      ])
              ),
            ],
          ),
          Text('个人信息'),
              ListView(
                children: [
                  GestureDetector(
                      onTap: () {},
                      child: const Row(
                          children:[
                            Text('性别'),
                            Icon(Icons.arrow_forward)
                          ])
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: const Row(
                          children:[
                            Text('生日'),
                            Icon(Icons.arrow_forward)
                          ])
                  ),
                ],
              ),
          Text('测试'),
              ListView(
                children: [
                  GestureDetector(
                      onTap: () {},
                      child: const Row(
                          children:[
                            Text('用户协议'),
                            Icon(Icons.arrow_forward)
                          ])
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: const Row(
                          children:[
                            Text('隐私政策'),
                            Icon(Icons.arrow_forward)
                          ])
                  ),
                ],
              ),
        ]));
  }
}
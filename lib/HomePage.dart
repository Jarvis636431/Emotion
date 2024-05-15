import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _onItemTapped() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('四月22日 星期一 天气🌤'),
      ),
      body: Column(
        children:[
          Row(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      const Text('今天心情XX'),
                      const Text('今天心情如何？，记录一下吧！'),
                      TextButton(
                        onPressed: () {},
                        child: const Text("TextButton按钮"),
                      )
                    ],
                  ),
                ],
              ),
              Image(image: AssetImage('assets/images/')),
            ],
          ),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Text('心情历史'),
                    Text('更多'),
                  ],
                ),
              ],
            ),
          ),
          ListView(
            children: [
              Text('情绪资料'),
              Row(
                children: [
                  Image(image: AssetImage('assets/images/')),
                  Column(
                    children: [
                      Text('mbti情绪大揭秘'),
                      Text('mbti情绪大揭秘'),
                      TextButton(onPressed:(){}, child: const Text('查看'))
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Image(image: AssetImage('assets/images/')),
                  Column(
                    children: [
                      Text('mbti情绪大揭秘'),
                      Text('mbti情绪大揭秘'),
                      TextButton(onPressed:(){}, child: const Text('查看'))
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.functions),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.today_outlined),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.blue,
      ),
    );
  }
}


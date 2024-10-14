import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoodCheckPage extends StatefulWidget {
  @override
  _MoodCheckPageState createState() => _MoodCheckPageState();
}

class _MoodCheckPageState extends State<MoodCheckPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: const Text('打卡成功！'),
        actions: [
          IconButton(
            icon: const Icon(Icons.star),
            onPressed: (){

            },
          ),],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Text('四月\n22日\n星期四'),
                  Image(image: AssetImage('assets/images/happy.png')),
                  Text('心情\n一般')
                ]
              ),
              Divider(
                height: 10,
                thickness: 1,
                color: Colors.grey,
              ),
              Text(''),
              Image(image: AssetImage('assets/images/happy.png')),
            ],
          ),
        ],
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoodCountPage extends StatefulWidget {
  @override
  _MoodCountPageState createState() => _MoodCountPageState();
}

class _MoodCountPageState extends State<MoodCountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text('心情统计'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(''),
            Image.asset(''),
            Image.asset(''),
            Image.asset(''),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('建议', style: TextStyle(fontSize: 20.sp),),
            ),
            ListView(
              children: [
                Row(
                  children: [
                    Image.asset(''),
                    Column(
                      children: [
                        Text('建议1', style: TextStyle(fontSize: 18.sp),),
                        Text('建议1', style: TextStyle(fontSize: 18.sp),),
                        IconButton(onPressed: (){}, icon: Icon(Icons.add))
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset(''),
                    Column(
                      children: [
                        Text('建议1', style: TextStyle(fontSize: 18.sp),),
                        Text('建议1', style: TextStyle(fontSize: 18.sp),),
                        IconButton(onPressed: (){}, icon: Icon(Icons.add))
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset(''),
                    Column(
                      children: [
                        Text('建议1', style: TextStyle(fontSize: 18.sp),),
                        Text('建议1', style: TextStyle(fontSize: 18.sp),),
                        IconButton(onPressed: (){}, icon: Icon(Icons.add))
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset(''),
                    Column(
                      children: [
                        Text('建议1', style: TextStyle(fontSize: 18.sp),),
                        Text('建议1', style: TextStyle(fontSize: 18.sp),),
                        IconButton(onPressed: (){}, icon: Icon(Icons.add))
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
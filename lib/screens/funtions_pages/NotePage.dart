import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotePage extends StatefulWidget {
  @override
  _NotePageState createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Note Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          ///TODO: 实现一个图文混排的输入框
          TextField(
            decoration: InputDecoration(
              hintText: 'Title',
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(10),
            ),
          ),
          ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: Image.asset('assets/images/1.jpg',
                    width: 100.w, height: 100.h, fit: BoxFit.cover),
              ),
              GestureDetector(
                onTap: () {},
                child: Image.asset('assets/images/1.jpg',
                    width: 100.w, height: 100.h, fit: BoxFit.cover),
              ),
              GestureDetector(
                onTap: () {},
                child: Image.asset('assets/images/1.jpg',
                    width: 100.w, height: 100.h, fit: BoxFit.cover),
              ),
              GestureDetector(
                onTap: () {},
                child: Image.asset('assets/images/1.jpg',
                    width: 100.w, height: 100.h, fit: BoxFit.cover),
              ),
              GestureDetector(
                onTap: () {},
                child: Image.asset('assets/images/1.jpg',
                    width: 100.w, height: 100.h, fit: BoxFit.cover),
              ),
            ],
          ),
          ButtonBar(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.refresh),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.picture_in_picture_sharp),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.share),
              ),
            ],
          )
        ],
      ),
    );
  }
}

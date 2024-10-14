import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PictureChoosePage extends StatefulWidget {
  @override
  _PictureChoosePageState createState() => _PictureChoosePageState();
}
class _PictureChoosePageState extends State<PictureChoosePage> {

  String info = '当前图片尚未解锁哦';
  toastInfo(String info) {
    print(info);
  }

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
          title: Text('选择图片进行填充吧'),
        ),
        body: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.0,
          ),
          children:[
            GestureDetector(
              child: Image.asset('assets/images/1.jpg'),
              onTap: () {
                Navigator.pushNamed(context, '/pictureFillPage', arguments: 'assets/images/1.jpg');
              },
            ),
            GestureDetector(
              child: Image.asset('assets/images/2.jpg'),
              onTap: () {
                Navigator.pushNamed(context, '/pictureFillPage', arguments: 'assets/images/2.jpg');
              },
            ),
            GestureDetector(
              child: Image.asset('assets/images/3.jpg'),
              onTap: () {
                Navigator.pushNamed(context, '/pictureFillPage', arguments: 'assets/images/3.jpg');
              },
            ),
            GestureDetector(
              child: Image.asset('assets/images/4.jpg'),
              onTap: () {
                Navigator.pushNamed(context, '/pictureFillPage', arguments: 'assets/images/4.jpg');
              },
            ),
            GestureDetector(
              child: Image.asset('assets/images/5.jpg'),
              onTap: () {
                Navigator.pushNamed(context, '/pictureFillPage', arguments: 'assets/images/5.jpg');
              },
            ),
            GestureDetector(
              child: Image.asset('assets/images/6.jpg'),
              onTap: () {
                Navigator.pushNamed(context, '/pictureFillPage', arguments: 'assets/images/6.jpg');
              },
            ),
          ],
        ),
    );
  }
}
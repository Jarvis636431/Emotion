import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:emotion/EntryPages/NameAgeSelectionPage.dart';

class GenderSelectionPage extends StatefulWidget {
  const GenderSelectionPage({Key? key}) : super(key: key);

  @override
  _GenderSelectionPage createState() => _GenderSelectionPage();
}

class _GenderSelectionPage extends State<GenderSelectionPage> {

  int sexselection = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text('Hi,你的性别是？'),
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            ElevatedButton(
              onPressed: () {
                sexselection++;
                setState(() {
                });
              },
              child: Image.asset('assets/images/female avatar.png'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/images/female.png'),
                Text(
                  '男生',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                sexselection++;
                setState(() {
                });
              },
              child: Image.asset('assets/images/male avatar.png'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/images/male.png'),
                Text(
                  '女生',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/age');
              },
              child: Text('下一步'),
            ),
          ],
        ),
      ),
    );
  }
}
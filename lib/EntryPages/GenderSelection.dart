import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:emotion/EntryPages/NameAgeSelectionPage.dart';

class GenderSelectionPage extends StatefulWidget {
  const GenderSelectionPage({super.key});

  @override
  _GenderSelectionPage createState() => _GenderSelectionPage();
}

class _GenderSelectionPage extends State<GenderSelectionPage> {

  int _sexselection = 0;

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
                _sexselection++;
                setState(() {
                });
              },
              child: Image.asset('assets/images/female.png'),
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
                _sexselection++;
                setState(() {
                });
              },
              child: Image.asset('assets/images/male.png'),
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
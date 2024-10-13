import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:emotion/EntryPages/GenderSelection.dart';
class IntroducingPage extends StatelessWidget{
  const IntroducingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GenderSelectionPage()),
          );
        },
        child: Stack(
          children: [
            Center(
              child: Image.asset('Introduction.png', fit: BoxFit.fill),
            ),
            const Text(
              '介绍文字\n介绍文字介绍文字',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'ZhanKuKuaiLeTi'),),
          ],
        ),
      )
    );
  }
}
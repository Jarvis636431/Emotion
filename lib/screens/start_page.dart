import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/introducing');
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
                  fontFamily: 'ZhanKuKuaiLeTi'),
            ),
          ],
        ),
      ),
    );
  }
}
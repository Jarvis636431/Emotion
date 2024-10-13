import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:emotion/EntryPages/IntroducingPage.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset('SplashPage.png', fit: BoxFit.fill),
          ),
          Row(
            children: [
              Image.asset('Icon.png'),
              const Text(
                '介绍文字\n介绍文字介绍文字',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'ZhanKuKuaiLeTi'),
              ),
            ],
          ),
        ],
      )
    );
  }
}

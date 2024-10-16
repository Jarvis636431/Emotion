import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'mood_infactor_page.dart';

class NowMoodPage extends StatelessWidget {
  const NowMoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/images/background/background_angry.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text('今日心情怎么样？'),
        ),
        body: Column(
          children: [
            Center(
              child: Image.asset('assets/images/mbti_emoji/enf/enf1.png'),
            ),
            Expanded(child: SizedBox(height: 20.w)),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MoodInfactorPage()));
              },
              child: const Text('是这样的'),
            )
          ],
        ),
      ),
    );
  }
}
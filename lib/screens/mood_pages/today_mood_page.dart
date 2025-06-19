import 'package:flutter/material.dart';
import 'now_mood_page.dart';

class TodayMoodPage extends StatelessWidget {
  const TodayMoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NowMoodPage()),
            );
          },
          child: Image.asset('assets/images/todaymood.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'mood_infactor_page.dart';

class NowMoodPage extends StatelessWidget {
  const NowMoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MoodInfactorPage()),
            );
          },
          child: Image.asset('assets/images/nowmood.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CountAndAdvisePage extends StatelessWidget {
  const CountAndAdvisePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Image.asset(
          'assets/images/page.jpg',
          fit: BoxFit.cover,
          width: double.infinity,
        ),
      ),
    );
  }
}

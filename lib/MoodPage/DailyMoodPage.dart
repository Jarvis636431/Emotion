import 'package:flutter/material.dart';

class DailyMoodPage extends StatelessWidget {
  const DailyMoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Theme.of(context).colorScheme.secondary,
          title: const Text('今天心情怎么样？'),
        ),
        body: Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  ElevatedButton(
                    onPressed: () {
                    Navigator.pushNamed(context, '/age');
              },
                    child: Text(''))
        ])));
  }
}
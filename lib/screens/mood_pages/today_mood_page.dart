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
        body: Column(children: [
          const Row(
            children: [
              Text('今天心情怎么样？'),
              Icon(Icons.emoji_emotions),
            ],
          ),
          Row(
            children: [
              Image(image: AssetImage('assets/images/.png')),
            ],
          ),
          Row(
            children: [
              Text('今天心情怎么样？'),
            ],
          ),
          Stack(
            children: [
              ListWheelScrollView(
                physics: FixedExtentScrollPhysics(),
                perspective: 0.003,
                itemExtent: 150,
                offAxisFraction: 13,
                diameterRatio: 1,
                squeeze: 1,
                useMagnifier: true,
                magnification: 1.5,
                children: [
                  Container(
                    color: Colors.red,
                    child: Center(
                      child: Text('1'),
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    child: Center(
                      child: Text('2'),
                    ),
                  ),
                  Container(
                    color: Colors.green,
                    child: Center(
                      child: Text('3'),
                    ),
                  ),
                  Container(
                    color: Colors.yellow,
                    child: Center(
                      child: Text('4'),
                    ),
                  ),
                  Container(
                    color: Colors.orange,
                    child: Center(
                      child: Text('5'),
                    ),
                  ),
                ]
              ),
              Column(
                children:[
                    Image(image: AssetImage('assets/images/.png')),
                    Row(
                    children: [
                      Text('一点点'),
                      Slider(
                        value: 0.0,
                        onChanged: (double value) {  },
                      ),
                      Text('非常多')
                    ],
                  ),
                    TextButton(onPressed: () {}, child: Text('是这样的')),
                ],
              ),
            ],
          ),
        ]));
  }
}

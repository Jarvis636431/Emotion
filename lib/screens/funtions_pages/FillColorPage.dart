import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FillColorPage extends StatefulWidget {
  @override
  _FillColorPageState createState() => _FillColorPageState();
}

class _FillColorPageState extends State<FillColorPage> {
  ScrollController _scrollController = ScrollController();
  double _scrollProgress = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        _scrollProgress = _scrollController.position.pixels /
            _scrollController.position.maxScrollExtent;
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

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
        ),
        body: Column(children: [
          Image.asset(''),
          ListView(
            scrollDirection: Axis.horizontal,
            children: [
              GestureDetector(
                child: Image.asset('assets/images/coloring.png'),
              ),
              GestureDetector(
                child: Image.asset('assets/images/coloring.png'),
              ),
              GestureDetector(
                child: Image.asset('assets/images/coloring.png'),
              ),
              GestureDetector(
                child: Image.asset('assets/images/coloring.png'),
              ),
            ],
          ),
          RotatedBox(
            quarterTurns: 90,
            child: Slider(
              value: _scrollProgress,
              onChanged: (value) {
                _scrollController
                    .jumpTo(value * _scrollController.position.maxScrollExtent);
              },
            ),
          ),
        ]));
  }
}

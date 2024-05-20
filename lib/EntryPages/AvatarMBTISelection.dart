import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:emotion/EntryPages/NameAgeSelectionPage.dart';

class AvatarMBTISelectionPage extends StatefulWidget {
  const AvatarMBTISelectionPage({Key? key}) : super(key: key);

  @override
  _AvatarMBTISelectionPage createState() => _AvatarMBTISelectionPage();
}

class _AvatarMBTISelectionPage extends State<AvatarMBTISelectionPage> {
  String _selectedOption = 'None';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text('请选择\n你的人格类型'),
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(),
            PopupMenuButton(
              onSelected: (String result) {
                setState(() {
                  _selectedOption = result;
                });
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: 'Option 1',
                  child: Text('Option 1'),
                ),
                const PopupMenuItem<String>(
                  value: 'Option 2',
                  child: Text('Option 2'),
                ),
                const PopupMenuItem<String>(
                  value: 'Option 3',
                  child: Text('Option 3'),
                ),
                const PopupMenuItem<String>(
                  value: 'Option 4',
                  child: Text('Option 4'),
                ),
                const PopupMenuItem<String>(
                  value: 'Option 5',
                  child: Text('Option 5'),
                ),
                const PopupMenuItem<String>(
                  value: 'Option 6',
                  child: Text('Option 6'),
                ),
                const PopupMenuItem<String>(
                  value: 'Option 7',
                  child: Text('Option 7'),
                ),
                const PopupMenuItem<String>(
                  value: 'Option 8',
                  child: Text('Option 8'),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/age');
              },
              child: Text('准备进入！'),
            )
          ],
        ),
      ),
    );
  }
}

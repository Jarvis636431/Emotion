import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:emotion/EntryPages/NameAgeSelectionPage.dart';

class AvatarMBTISelectionPage extends StatelessWidget {
  const AvatarMBTISelectionPage({Key? key}) : super(key: key);

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
            //PopupMenuButton(itemBuilder: itemBuilder),
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

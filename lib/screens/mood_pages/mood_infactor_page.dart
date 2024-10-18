import 'package:emotion/screens/mood_pages/check_mood_page.dart';
import 'package:flutter/material.dart';
import 'package:emotion/utils/ColorUtils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoodInfactorPage extends StatelessWidget {
  const MoodInfactorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background/otherbackgrounds/infactor_bg.png'),
          fit: BoxFit.fill,
        ),
      ),
      ///TODO:flutter神秘的图片加载问题，等一会就好了，刚粘贴进去的图片不能立刻加载，而且也不能删除之前不用的图片，否则热重载会报错
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios,color: ColorUtils.text_brown,),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('是什么影响了你的情绪？',style: TextStyle(fontSize: 32.sp,fontFamily: 'LanSong',color: ColorUtils.text_brown),),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.yellow,
              width: 400.h,
              height: 400.w,
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                ///自定义组件导入图片+文字
                children: const [
                  Text('工作'),
                  Text('学习'),
                  Text('生活'),
                  Text('人际关系'),
                  Text('健康'),
                  Text('其他'),
                ],
              ),
            ),
            Expanded(child: SizedBox()),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MoodCheckPage()));
              },
              child: Container(
                  width: 200.h,
                  height: 60.w,
                  decoration: BoxDecoration(
                    color: ColorUtils.bg_white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  alignment: Alignment.center,
                  child:Text('是这样的',style: TextStyle(fontFamily: 'LanSong',fontSize: 24.sp,color: ColorUtils.text_brown),)),//修改字体
            ),
            SizedBox(height: 80.w),
          ],
        ),
      ),
    );
  }
}

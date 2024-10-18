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
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h,vertical: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50.w),
              Container(
                width: 400.h,
                height: 400.w,//设置一个超出范围的高，使之能完全容纳，否则加上禁止滚动后会出现溢出问题
                child: GridView.builder( ///布局问题
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10.h,
                    mainAxisSpacing: 10.w,
                    childAspectRatio: 0.9,
                  ),
                  physics: const NeverScrollableScrollPhysics(),//禁用滚动的方法
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                            width: 100.h,
                            height: 100.w,
                            decoration: BoxDecoration(
                              color: ColorUtils.bg_white,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            alignment: Alignment.center,
                            child: Text('图片',style: TextStyle(fontFamily: 'LanSong',fontSize: 24.sp,color: ColorUtils.text_brown),),//修改字体
                          ),
                        Text('文字',style: TextStyle(fontFamily: 'LanSong',fontSize: 14.sp,color: ColorUtils.text_brown),),//修改字体
                      ],
                    );
                  },
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
      ),
    );
  }
}

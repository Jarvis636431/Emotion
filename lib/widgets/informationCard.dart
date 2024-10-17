import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:emotion/utils/ColorUtils.dart';

class InformationCard extends StatelessWidget {
  const InformationCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.image});

  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    //card不方便设置大小，所以用container替代
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: BoxDecoration(
        color: ColorUtils.news_card_bg,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: ColorUtils.shadow,
            blurRadius: 8.5,
            offset: Offset(4, 4), // changes position of shadow
          ),
        ],
      ),
      width: 360.h,
      height: 140.w,
      child: Row(
        children: [
          Image.asset(image),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 20.sp),
              ),
              Text(
                subtitle,
                style: TextStyle(fontSize: 14.sp),
              ),
            ],
          ),
          ///查看按钮的布局
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [TextButton(
          //     child: Text('查看'),
          //     onPressed: () {},
          //   )],)
        ],
      ),
    );
  }
}

//封装组件使用widget/声明为一个class
//声明为一个class更常用于我们规定了格式，需要服用的是布局样式，而内容根据传入的参数来改变，在这样的场景下更适合使用class方法封装，传参的方法就是在继承状态的时候，加入required xxx
//然后声明数据类型，注意看清是字符串还是什么，最后在布局中应用具体数据即可

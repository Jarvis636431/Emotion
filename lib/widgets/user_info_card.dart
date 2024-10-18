import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:emotion/utils/ColorUtils.dart';

class UserInfoCard extends StatelessWidget {
  final String title;
  final Widget destination;

  const UserInfoCard({
    Key? key,
    required this.title,
    required this.destination,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      child: Container(
        width: 351.h,
        height: 59.w,
        decoration: BoxDecoration(
          color: ColorUtils.info_card_bg,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16.sp, color: ColorUtils.text_brown),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: ColorUtils.text_brown,
                size: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
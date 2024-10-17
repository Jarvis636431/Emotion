import 'package:flutter/painting.dart';

abstract final class ColorUtils {
  ColorUtils._();

  //十六进制写法！
  static const Color bg_white = Color(0xffFFFFFF); //渐变背景一端的白色

  static const Color bg_yellow = Color(0xffFFF5B6); //渐变背景一端的黄色

  static const Color light_bg = Color(0xffFFFEFA); //淡色背景

  static const Color text_yellow = Color(0xffF2B10A); //黄色文字的颜色,也是一些icon的颜色

  static const Color card_bg = Color(0xffFFDF8A); //测试卡片的背景颜色

  static const Color info_card_bg = Color(0xffFCE6AA); //个人信息框的颜色,也是tag的颜色，也是记录任务的背景色,也是未完成任务的颜色

  static const Color finished_task = Color(0xffffe281); //任务卡片的背景颜色

  static const Color func_card_bg = Color(0xffFFF8E5); //功能页卡片背景颜色

  static const Color daily_sentence_bg = Color(0xffFFE18F); //每日一句卡片背景颜色

  static const Color text_brown = Color(0xff683619); //棕色字体的颜色

  static const Color text_light_brown = Color(0xffA65E3); //浅棕色字体//不显示？

  static const Color shadow = Color(0xffD7C39C); //阴影的颜色

  static const Color deep_shadow = Color(0xff9E6F29); //起始页背景色

  static const Color news_card_bg = Color(0xffFFFAE0); //起始页情绪资料卡片的背景色

  static const Color grad_blue = Color(0xff9CCEFB); //渐变卡片的蓝色

  static const Color grad_pink = Color(0xffFF92B2); //渐变卡片的粉色

  static const Color grad_light_green = Color(0xff6EE196); //渐变卡片的浅绿色

  static const Color grad_green = Color(0xff53A1A3); //渐变卡片的绿色

  static const Color grad_purple = Color(0xffA3A3D0); //渐变卡片的紫色

  static const Color grad_light_pink = Color(0xffFEBABB); //渐变卡片的浅粉色

  static const Color grad_lighter_pink = Color(0xffFED5BF); //渐变卡片的浅粉色

  static const Color tab_bg = Color(0xffFFE27F); //tab背景色

  static const Color tab_shadow = Color(0xffE5B455); //tab阴影色

  static const Color subtitle = Color(0xff979797); //背景蓝色
}

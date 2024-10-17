import 'package:flutter/painting.dart';

abstract final class ColorUtils {
  ColorUtils._();
  //十六进制写法！
  static const Color bg_white = Color(0xffFFFFFF);//渐变背景一端的白色

  static const Color bg_yellow = Color(0xffFFF5B6);//渐变背景一端的黄色

  static const Color text_yellow = Color(0xffF2B10A);//黄色文字的颜色

  static const Color card_bg = Color(0xffFFDF8A);//测试卡片的背景颜色

  static const Color info_card_bg = Color(0xffFCE6AA);//个人信息框的颜色

  static const Color func_card_bg = Color(0xffFFF8E5);//功能页卡片背景颜色

  static const Color daily_sentence_bg = Color(0xffFFE18F);//每日一句卡片背景颜色

  static const Color text_brown = Color(0xff683619);//棕色字体的颜色

  static const Color shadow = Color(0xffD7C39C);//黑色字体的颜色
}

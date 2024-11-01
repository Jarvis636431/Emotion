import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:emotion/commons/providers.dart';

import 'package:emotion/splash_page.dart';
import 'package:emotion/home_page.dart';
import 'package:emotion/screens/start_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      //使用provider包裹整个app,这样就可以在任何地方使用provider了,用来管理时间
      ChangeNotifierProvider(
          create: (context) => TimeDateProvider(), child: const MyApp()));

  //这样就可以实现沉浸式了
  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      //screen util要进行初始化，获取设计图尺寸
      designSize: const Size(393, 852),
      child: MaterialApp(
        routes: {
          '/home': (context) => const HomePage(),
          '/start': (context) => const StartPage(),
        },
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            surfaceTintColor: Colors.transparent, //解决了滚动触发时会变色的原因
          ),
          splashColor: Colors.transparent, //解决了点击时会有水波纹的效果
        ),
        title: 'Mireille',//这里影响后台的
        home: const SplashScreen(),
      ),
    );
  }
}

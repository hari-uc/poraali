import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poraali/src/screens/tabs_wrapper.dart';

class MyPoraaliApp extends StatelessWidget {
  const MyPoraaliApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: "Montserrat",
        ),
        debugShowCheckedModeBanner: false,
        home: TabsWrapper(),
      ),
    );
  }
}

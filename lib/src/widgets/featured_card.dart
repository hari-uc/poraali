import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedCard extends StatelessWidget {
  const FeaturedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context){
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          decoration:  BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20.r)
          ),
          child: const Column(
          //custom images or text comes here
          ),
        );
      },
    );
  }
}

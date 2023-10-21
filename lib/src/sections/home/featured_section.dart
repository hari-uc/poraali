import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poraali/src/widgets/featured_card.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         SizedBox(
          height: 20.sp,
        ),
        CarouselSlider(
          options: CarouselOptions(
            height: 150.sp,
          enableInfiniteScroll: false,
          enlargeCenterPage: true,
            autoPlay: true,

           ),
          items: [1,2,3,4,5].map((i) {
            return const FeaturedCard();
          }).toList(),
        )
      ],
    );
  }
}

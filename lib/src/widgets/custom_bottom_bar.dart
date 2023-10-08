import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poraali/src/widgets/custom_bottom_bar_item.dart';

class CustomBottomBar extends StatelessWidget {
  final int selectedTab;
  final void Function(int) onTabSelected;
  const CustomBottomBar({
        super.key,
        required this.selectedTab,
        required this.onTabSelected
      });

  @override
  Widget build(BuildContext context) {
    //check if the safe area applied at the bootm
    EdgeInsets safePadding = MediaQuery.of(context).padding;
    bool isSafeAreaApplied = safePadding.top > 0 || safePadding.bottom > 0;
    return  Container(
      padding: EdgeInsets.only(
        top: 16.sp,
        bottom: isSafeAreaApplied ? 6.sp : 20.sp
      ),
      decoration:  BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            spreadRadius: 1,
            blurRadius: 1,
            color: Colors.black.withOpacity(0.1),
          )
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r)
        )
      ),
      child: Row(
        children: [
          CustomBottomBarItem(
            label: "Home",
            icon: FeatherIcons.home,
            index: 0,
            selectedIndex: selectedTab,
            onTabSelected: (index) => onTabSelected(index),
          ),
          CustomBottomBarItem(
            label: "Notes",
            icon: FeatherIcons.book,
            index: 1,
            selectedIndex: selectedTab,
            onTabSelected: (index) => onTabSelected(index),
          ),
          CustomBottomBarItem(
            label: "Bookmarks",
            icon: FeatherIcons.bookmark,
            index: 2,
            selectedIndex: selectedTab,
            onTabSelected: (index) => onTabSelected(index),
          ),
          CustomBottomBarItem(
            label: "Profile",
            icon: FeatherIcons.user,
            index: 3,
            selectedIndex: selectedTab,
            onTabSelected: (index) => onTabSelected(index),
          )

        ],
      ),
    );
  }
}

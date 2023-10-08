import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomBarItem extends StatelessWidget {
  final String label;
  final IconData icon;
  final int index;
  final void Function(int) onTabSelected;
  final int selectedIndex;

  const CustomBottomBarItem(
      {super.key, required this.label, required this.icon, required this.index,required this.onTabSelected, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    final selected = index == selectedIndex;
    return Expanded(
      child: SafeArea(
          top: false,
          child: GestureDetector(
            onTap: () => onTabSelected(index),
            child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                      icon,
                      color: selected ? Colors.purpleAccent : Colors.grey,
                      size: 22.sp
                  ),
                  SizedBox(height: 10.sp),
                  Text(
                      label,
                      style: TextStyle(
                          color: selected ? Colors.purpleAccent : Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp
                      )
                  )
                ],
              ),
            ),
          ),
      ),
    );
  }
}

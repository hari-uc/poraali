import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poraali/src/screens/bookmark_screen.dart';
import 'package:poraali/src/screens/home_screen.dart';
import 'package:poraali/src/screens/login_screen.dart';
import 'package:poraali/src/screens/profile_screen.dart';
import 'package:poraali/src/widgets/custom_bottom_bar.dart';

class TabsWrapper extends StatefulWidget {
  const TabsWrapper({super.key});

  @override
  State<TabsWrapper> createState() => _TabsWrapperState();
}

class _TabsWrapperState extends State<TabsWrapper> {
  late PageController _tabsPageController;
  int selectedTab = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabsPageController = PageController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          PageView(
            controller: _tabsPageController,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (index){
              setState(() {
                selectedTab = index;
              });
            },
            children: const <Widget>[
              HomeScreen(),
              LoginScreen(),
              BookMarkScreen(),
              ProfileScreen()
            ],
          ),
          Positioned(
            bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: CustomBottomBar(
                selectedTab: selectedTab,
                onTabSelected: (int index){
                  // if(selectedTab == index){
                  //   scrollToTop(getScrollController(index));
                  // }
                  setState(() {
                    _tabsPageController.animateToPage(index, duration: const Duration(milliseconds: 10), curve: Curves.easeOutCubic);
                  });
                }
              ))
        ],
      ),
    );
  }
}

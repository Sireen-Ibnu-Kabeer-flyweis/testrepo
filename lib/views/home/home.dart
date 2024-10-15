import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stock_detector/const/global.dart';
import 'package:stock_detector/views/chat/chat.dart';
import 'package:stock_detector/views/course/course.dart';
import 'package:stock_detector/views/home_screen/home_screen.dart';
import 'package:stock_detector/views/learn/learn.dart';
import 'package:stock_detector/views/profile/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedBottomBarIndex = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.white,
      bottomNavigationBar: Container(
        height: 97.h,
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: colors.black.withOpacity(0.1),
              offset: Offset(0, 1),
              spreadRadius: 1,
              blurRadius: 10,
            )
          ],
        ),
        child: BottomAppBar(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 13.w),
          color: colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(lists.bottomBarIcons.length, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedBottomBarIndex = index;
                    pageController.animateToPage(
                      index,
                      curve: Curves.ease,
                      duration: Duration(milliseconds: 500),
                    );
                  });
                },
                child: Column(
                  children: [
                    SvgPicture.asset(
                      height: 24.h,
                      width: 24.w,
                      lists.bottomBarIcons[index],
                      color: selectedBottomBarIndex == index
                          ? colors.primary
                          : colors.greyText,
                    ),
                    spacing.heightB(2.h),
                    Text(
                      "${lists.bottomBarTitle[index]}",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: fonts.medium,
                        color: selectedBottomBarIndex == index
                            ? colors.primary
                            : colors.greyText,
                      ),
                    )
                  ],
                ),
              );
            }),
          ),
        ),
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            selectedBottomBarIndex = value;
          });
        },
        children: [
          HomeScreen(),
          Learn(),
          Course(),
          Chat(),
          Profile(),
        ],
      ),
    );
  }
}

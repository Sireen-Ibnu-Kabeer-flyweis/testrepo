import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stock_detector/const/global.dart';
import 'package:stock_detector/views/components/custom_drawer.dart';
import 'package:stock_detector/views/components/custom_learning_card.dart';

class Learn extends StatelessWidget {
  const Learn({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    int percentage = 40;
    bool isCourseAvailable = true;
    return Scaffold(
      key: _scaffoldKey,
      drawer: customDrawer(),
      backgroundColor: colors.white,
      body: Container(
        width: double.infinity,
        padding: spacing.screenPadding,
        child: Column(
          children: [
            spacing.heightB(77.h),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    _scaffoldKey.currentState!.openDrawer();
                  },
                  child: SvgPicture.asset(assets.igMenu2),
                ),
                SizedBox(width: 28.w),
                Text(
                  "My Learning",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: fonts.medium,
                  ),
                ),
              ],
            ),
            spacing.heightB(47.h),
            isCourseAvailable == true
                ? Column(
                    children: [
                      learningCard(percentage),
                      learningCard(percentage),
                    ],
                  )
                : Column(
                    children: [
                      SvgPicture.asset(assets.igNoLearning),
                      spacing.heightB(45.h),
                      Text(
                        "No Courses",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontFamily: fonts.medium,
                        ),
                      ),
                      spacing.heightB(26.h),
                      Text(
                        textAlign: TextAlign.center,
                        "Looks like you have not enrolled for any course yet",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontFamily: fonts.regular,
                          color: colors.lightgreyText,
                        ),
                      ),
                      spacing.heightB(71.h),
                      SizedBox(
                        width: 198.w,
                        height: 40.h,
                        child: FilledButton(
                          onPressed: () {},
                          child: Text("Explore Courses"),
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}

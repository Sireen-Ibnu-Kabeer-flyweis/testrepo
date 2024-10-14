import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:stock_detector/const/global.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            spacing.heightB(558.h),
            Container(
              padding: EdgeInsets.all(24.w),
              height: 294.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.r),
                  topRight: Radius.circular(24.r),
                ),
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 32.sp),
                      children: [
                        TextSpan(
                          text: "Discover, Learn, and Thrive in ",
                          style: TextStyle(
                            color: colors.black,
                          ),
                        ),
                        TextSpan(
                          text: "Trading",
                          style: TextStyle(
                              color: colors.primary,
                              fontFamily: fonts.semiBold),
                        ),
                      ],
                    ),
                  ),
                  spacing.heightB(8.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Get ready to level up your trading game.",
                      style:
                          TextStyle(fontFamily: fonts.medium, fontSize: 12.sp),
                    ),
                  ),
                  spacing.heightB(42.h),
                  SizedBox(
                    width: 221.w,
                    child: FilledButton(
                      onPressed: () {
                        GoRouter.of(context).goNamed(Routes.signin.name);
                      },
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: fonts.semiBold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox bgWidget({child}) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: colors.primary,
              child: Column(
                children: [
                  spacing.heightB(122.81.h),
                  Image.asset(assets.igLanding),
                  spacing.heightB(30.81.h),
                  Image.asset(assets.igLandingShadow),
                ],
              ),
            ),
          ),
          Positioned(
            top: 351.h,
            left: -128.w,
            child: Container(
              width: 255.w,
              height: 255.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.05),
              ),
            ),
          ),
          Positioned(
            top: 153.h,
            left: 247.w,
            child: Container(
              width: 255.w,
              height: 255.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.05),
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}

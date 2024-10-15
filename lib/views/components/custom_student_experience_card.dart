import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_detector/const/global.dart';

Container studentExperienceCard() {
  return Container(
    margin: EdgeInsets.only(right: 15.w),
    height: 158.h,
    width: double.infinity,
    decoration: BoxDecoration(
      color: colors.primary,
      borderRadius: BorderRadius.circular(12.r),
    ),
    child: Stack(
      children: [
        Positioned(
          top: -60.h,
          left: 247.w,
          child: Container(
            height: 255.h,
            width: 255.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.05),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 18.h),
          child: Column(
            children: [
              Text(
                "Great learning. I never thought someone teach trading to me this clear.",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: fonts.bold,
                    color: colors.white),
              ),
              spacing.heightB(22.h),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(assets.igProfile1),
                    radius: 20.r,
                  ),
                  spacing.widthB(10.w),
                  Text(
                    "Sandeep Kanth",
                    style: TextStyle(
                      color: colors.white,
                      fontSize: 16.sp,
                      fontFamily: fonts.medium,
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}

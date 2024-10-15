import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_detector/const/global.dart';

Container highlightCourseCards() {
  return Container(
    margin: EdgeInsets.only(right: 15.w),
    padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 6.w),
    height: 158.h,
    width: 173.w,
    decoration: BoxDecoration(
      color: colors.primary,
      borderRadius: BorderRadius.circular(12.r),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(
            assets.appLogo,
          ),
        ),
        spacing.heightB(8.h),
        Text(
          "Become a Stock Investor",
          style: TextStyle(
            fontSize: 16.sp,
            fontFamily: fonts.bold,
            color: colors.white,
          ),
        ),
        spacing.heightB(4.h),
        Text(
          "Teach by professionals",
          style: TextStyle(
            fontSize: 14.sp,
            color: colors.white,
          ),
        ),
        spacing.heightB(8.h),
        Icon(
          Icons.arrow_forward,
          color: colors.white,
        ),
      ],
    ),
  );
}

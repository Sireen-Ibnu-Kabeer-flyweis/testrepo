import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:stock_detector/const/global.dart';

Container learningCard(int percentage) {
  return Container(
    margin: EdgeInsets.only(bottom: 16.h),
    padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
    height: 186.h,
    width: 361.w,
    decoration: BoxDecoration(
      color: colors.primary,
      borderRadius: BorderRadius.circular(12.r),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              height: 52.h,
              width: 52.w,
              assets.igChartGrowth,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Image.asset(
                height: 70.h,
                width: 79.w,
                assets.appLogo,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 281.w,
          child: Text(
            "Intraday Specific Program. By Ravi Chandramani, Daniel Schifano.",
            style: TextStyle(
              fontSize: 14.sp,
              fontFamily: fonts.medium,
              color: colors.white,
            ),
          ),
        ),
        spacing.heightB(24.h),
        LinearPercentIndicator(
          padding: EdgeInsets.all(0),
          width: 324.w,
          lineHeight: 5.h,
          percent: percentage / 100,
          backgroundColor: colors.black.withOpacity(0.15),
          progressColor: colors.white,
        ),
        spacing.heightB(6.h),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            "16 Videos left",
            style: TextStyle(
                fontSize: 10.sp,
                fontFamily: fonts.regular,
                color: colors.white.withOpacity(0.8)),
          ),
        ),
      ],
    ),
  );
}

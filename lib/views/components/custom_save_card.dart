import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stock_detector/const/global.dart';

Container saveCourseCard() {
  return Container(
    margin: EdgeInsets.only(right: 10.w),
    width: 200.w,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(left: 2.w, top: 10.h),
          height: 84.h,
          width: 200.w,
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Row(
            children: [
              Image.asset(
                width: 100.w,
                assets.igPerson1,
                fit: BoxFit.scaleDown,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SvgPicture.asset(assets.igBookmark),
                  SizedBox(
                    width: 90.w,
                    child: Text(
                      overflow: TextOverflow.visible,
                      "Ravi Chandramani",
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: fonts.medium,
                        color: colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        spacing.heightB(7.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Easy",
              style: TextStyle(
                fontSize: 12.sp,
                fontFamily: fonts.medium,
              ),
            ),
            spacing.widthB(8.w),
            SvgPicture.asset(assets.igStar),
            spacing.widthB(13.w),
            Text(
              "4.7 (25)",
              style: TextStyle(
                fontSize: 12.sp,
              ),
            ),
            spacing.widthB(15.w),
            Text(
              "Rs.1599/-",
              style: TextStyle(
                fontSize: 12.sp,
                fontFamily: fonts.medium,
              ),
            ),
          ],
        ),
        spacing.heightB(2.h),
        Text(
          "Intraday specific Program",
          style: TextStyle(
            fontSize: 12.sp,
            fontFamily: fonts.medium,
          ),
        ),
        spacing.heightB(4.h),
        Row(
          children: [
            SvgPicture.asset(assets.igClock),
            spacing.widthB(4.w),
            Text(
              "12h 52m",
              style: TextStyle(
                fontSize: 12.sp,
                fontFamily: fonts.medium,
                color: colors.greyText,
              ),
            ),
            spacing.widthB(14.w),
            SvgPicture.asset(assets.igLessons),
            spacing.widthB(4.w),
            Text(
              "14 Lessons",
              style: TextStyle(
                fontSize: 12.sp,
                fontFamily: fonts.medium,
                color: colors.greyText,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

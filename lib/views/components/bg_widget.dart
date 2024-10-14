import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_detector/const/global.dart';

SizedBox authBgWidget({child}) {
  return SizedBox(
    width: double.infinity,
    height: double.infinity,
    child: Stack(
      children: [
        Positioned.fill(
          child: Container(
            color: colors.white,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          width: double.infinity,
          height: 263.h,
          color: colors.primary,
        ),
        Positioned(
          top: -60.h,
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
        Positioned(
          top: 138.h,
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
        child
      ],
    ),
  );
}

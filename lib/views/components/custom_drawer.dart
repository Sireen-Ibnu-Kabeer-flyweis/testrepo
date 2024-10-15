import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stock_detector/const/global.dart';

Container customDrawer() {
  return Container(
    height: double.infinity,
    width: 250.w,
    decoration: BoxDecoration(color: colors.white),
    child: Column(
      children: [
        Container(
          height: 215.h,
          width: 250.w,
          decoration: BoxDecoration(
            color: colors.primary,
          ),
          child: Stack(
            children: [
              Positioned(
                top: -146.h,
                left: 155.w,
                child: Container(
                  height: 255.h,
                  width: 255.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.05),
                  ),
                ),
              ),
              Positioned(
                top: 75.h,
                left: -31.w,
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
                padding:
                    EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 18.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    spacing.heightB(22.h),
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 52.r,
                          backgroundColor: colors.white,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(assets.igProfile1),
                            radius: 50.r,
                          ),
                        ),
                        Positioned(
                          right: 14.w,
                          bottom: 6.h,
                          child: CircleAvatar(
                            radius: 8.5.r,
                            backgroundColor: colors.white,
                            child: CircleAvatar(
                              radius: 6.5.r,
                              backgroundColor: colors.green,
                            ),
                          ),
                        )
                      ],
                    ),
                    spacing.heightB(10.h),
                    Text(
                      "Sandeep Kanth",
                      style: TextStyle(
                        color: colors.white,
                        fontSize: 16.sp,
                        fontFamily: fonts.bold,
                      ),
                    ),
                    Text(
                      "ID:12364555",
                      style: TextStyle(
                        color: colors.white,
                        fontSize: 10.sp,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        spacing.heightB(24.h),
        Column(
          children: List.generate(lists.drawerIconList.length, (index) {
            return Container(
              padding: EdgeInsets.only(left: 25.w),
              margin: EdgeInsets.only(bottom: 15.h),
              child: Row(
                children: [
                  SizedBox(
                    height: 20.h,
                    width: 20.w,
                    child: SvgPicture.asset(
                      lists.drawerIconList[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                  spacing.widthB(14.w),
                  Text(
                    "${lists.drawerTitleList[index]}",
                    style: TextStyle(
                      fontSize: 14.sp,
                    ),
                  )
                ],
              ),
            );
          }),
        ),
        spacing.heightB(230.h),
        Padding(
          padding: EdgeInsets.only(left: 25.0.w),
          child: Row(
            children: [
              SizedBox(
                height: 20.h,
                width: 20.w,
                child: SvgPicture.asset(
                  assets.igSignOut,
                  fit: BoxFit.cover,
                ),
              ),
              spacing.widthB(14.w),
              Text(
                "Log Out",
                style: TextStyle(
                  fontSize: 14.sp,
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}

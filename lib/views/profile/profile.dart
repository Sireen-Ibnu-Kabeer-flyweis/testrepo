import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stock_detector/const/global.dart';
import 'package:stock_detector/views/components/custom_drawer.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      backgroundColor: colors.white,
      key: _scaffoldKey,
      drawer: customDrawer(),
      body: Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 420.h,
              decoration: BoxDecoration(
                  color: colors.primary,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.r),
                    bottomRight: Radius.circular(30.r),
                  )),
              child: Stack(
                children: [
                  Positioned(
                    top: 60.h,
                    left: 10.w,
                    child: SizedBox(
                      width: 370.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    _scaffoldKey.currentState!.openDrawer();
                                  },
                                  child: SizedBox(
                                      width: 24.w,
                                      height: 22.h,
                                      child: SvgPicture.asset(assets.igMenu))),
                              SizedBox(width: 16.w),
                              Text(
                                "My Profile",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontFamily: fonts.medium,
                                  color: colors.white,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 4.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(38.r),
                              color: colors.white,
                            ),
                            child: Text(
                              "Edit Profile",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: fonts.medium,
                                color: colors.primary,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 148.h,
                    left: 146.h,
                    child: Column(
                      children: [
                        Container(
                          width: 101.w,
                          height: 112.h,
                          child: Image.asset(assets.igProfile2),
                        ),
                        spacing.heightB(13.h),
                        Text(
                          "Sandeep kanth",
                          style: TextStyle(
                            fontFamily: fonts.bold,
                            fontSize: 16.sp,
                            color: colors.white,
                          ),
                        ),
                        spacing.heightB(6.h),
                        Text(
                          "ID:12364555",
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -107.h,
                    left: 50.w,
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
                    top: 213.h,
                    left: 221.w,
                    child: Container(
                      height: 255.h,
                      width: 255.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.05),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            spacing.heightB(10.h),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(lists.profileScreenIconList.length,
                      (index) {
                    return Container(
                      margin: EdgeInsets.only(
                          bottom: 16.h, right: 24.w, left: 24.w),
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(vertical: 6.h, horizontal: 8.w),
                      decoration: BoxDecoration(
                        color: colors.primary.withOpacity(0.19),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: colors.primary.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              height: 55.h,
                              width: 58.w,
                              child: SvgPicture.asset(
                                height: 30.h,
                                width: 30.w,
                                lists.profileScreenIconList[index],
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                            Text(
                              "${lists.profileScreenTitleList[index]}",
                              style: TextStyle(
                                fontSize: 16.sp,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: colors.greyText,
                                ),
                                spacing.widthB(20.w)
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

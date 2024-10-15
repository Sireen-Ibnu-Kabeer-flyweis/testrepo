import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stock_detector/const/global.dart';
import 'package:stock_detector/views/components/course_highlight_card.dart';
import 'package:stock_detector/views/components/custom_drawer.dart';
import 'package:stock_detector/views/components/custom_save_card.dart';
import 'package:stock_detector/views/components/custom_student_experience_card.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int percentage = 10;
  int reviewCardIndex = 0;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      drawer: customDrawer(),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 240.h,
                decoration: BoxDecoration(
                  color: colors.primary,
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  _scaffoldKey.currentState!.openDrawer();
                                },
                                child: SvgPicture.asset(assets.igMenu),
                              ),
                              SizedBox(width: 28.w),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hello, Welcome 👋",
                                    style: TextStyle(
                                      color: colors.white,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                  Text(
                                    "Sandeep Kanth",
                                    style: TextStyle(
                                      color: colors.white,
                                      fontSize: 16.sp,
                                      fontFamily: fonts.medium,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage(assets.igProfile1),
                            radius: 20.r,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: -60.h,
                      left: 16.w,
                      right: 16.w,
                      child: Container(
                        height: 120.h,
                        child: CarouselSlider(
                          items: [
                            assets.igBanner1,
                            assets.igBanner2,
                            assets.igBanner3,
                          ].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  clipBehavior: Clip.antiAlias,
                                  margin: EdgeInsets.symmetric(horizontal: 8.w),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0.r),
                                  ),
                                  child: Image.asset(
                                    i,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                );
                              },
                            );
                          }).toList(),
                          options: CarouselOptions(
                            height: 120.0.h,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              spacing.heightB(103.h),
              Padding(
                padding: spacing.screenPadding,
                child: Column(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 11.w, vertical: 7.h),
                      height: 75.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: colors.milkyWhite,
                        borderRadius: BorderRadius.circular(10.0.r),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            assets.igChartGrowth,
                          ),
                          spacing.widthB(14.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Intraday Specific Program",
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontFamily: fonts.bold,
                                ),
                              ),
                              Text(
                                "Ravi Chandramani, Daniel Schifano",
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  fontFamily: fonts.medium,
                                ),
                              ),
                              spacing.heightB(6.h),
                              LinearPercentIndicator(
                                padding: EdgeInsets.all(0),
                                width: 190.w,
                                lineHeight: 2,
                                percent: percentage / 100,
                                backgroundColor: colors.black.withOpacity(0.15),
                                progressColor: colors.primary,
                              ),
                              spacing.heightB(6.h),
                              Text(
                                "${percentage} % Complete",
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  color: colors.primary,
                                ),
                              ),
                            ],
                          ),
                          spacing.widthB(45.w),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20.sp,
                          ),
                        ],
                      ),
                    ),
                    spacing.heightB(27.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Saved Courses",
                          style: TextStyle(
                            fontSize: 16.sp,
                          ),
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: colors.black.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                    spacing.heightB(20.h),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          saveCourseCard(),
                          saveCourseCard(),
                        ],
                      ),
                    ),
                    spacing.heightB(29.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Highlighted Courses",
                          style: TextStyle(
                            fontSize: 16.sp,
                          ),
                        ),
                        Text(
                          "See All",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: colors.black.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                    spacing.heightB(20.h),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          highlightCourseCards(),
                          highlightCourseCards(),
                        ],
                      ),
                    ),
                    spacing.heightB(27.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 282.w,
                          child: Text(
                            "Here's what our students are saying about their experience",
                            style: TextStyle(
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                        Text(
                          "See All",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: colors.black.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                    spacing.heightB(25.h),
                    CarouselSlider(
                      items: [
                        studentExperienceCard(),
                        studentExperienceCard(),
                        studentExperienceCard(),
                      ],
                      options: CarouselOptions(
                        autoPlayCurve: Curves.ease,
                        height: 168.0.h,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          // setState(() {
                          reviewCardIndex = index;
                          // });
                        },
                      ),
                    ),
                    spacing.heightB(13.h),
                    AnimatedSmoothIndicator(
                      activeIndex: reviewCardIndex,
                      count: 3,
                      effect: ScrollingDotsEffect(
                        activeDotColor: colors.primary,
                        dotHeight: 8.h,
                        dotWidth: 8.w,
                      ),
                    ),
                    spacing.heightB(28.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Connect with us",
                        style: TextStyle(
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                    spacing.heightB(12.h),
                    Container(
                      margin: EdgeInsets.only(right: 15.w),
                      height: 178.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: colors.primary,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: -134.h,
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
                          Positioned(
                            top: 45.h,
                            left: -55.w,
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
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0.w, vertical: 14.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(assets.igFollowUs),
                                spacing.heightB(12.h),
                                Text(
                                  "Social Media Channels",
                                  style: TextStyle(
                                    color: colors.white,
                                    fontSize: 12.sp,
                                    fontFamily: fonts.medium,
                                  ),
                                ),
                                spacing.heightB(8.h),
                                Text(
                                  "Follow for More Updated’s and Many More",
                                  style: TextStyle(
                                    color: colors.white,
                                    fontSize: 10.sp,
                                  ),
                                ),
                                spacing.heightB(17.h),
                                Row(
                                  children: List.generate(4, (index) {
                                    return Container(
                                      margin: EdgeInsets.only(right: 24.w),
                                      child: Image.asset(
                                        height: 32.h,
                                        width: 32.w,
                                        lists.homeSocialMediaIconList[index],
                                      ),
                                    );
                                  }),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    spacing.heightB(34.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

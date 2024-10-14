import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'package:pinput/pinput.dart';
import 'package:stock_detector/const/global.dart';
import 'package:stock_detector/views/components/bg_widget.dart';
import 'package:stock_detector/views/components/custom_textfield.dart';

class ForgotPassword extends StatefulWidget {
  ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController pinputController = TextEditingController();
  bool isOtpSend = false;

  @override
  Widget build(BuildContext context) {
    return authBgWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 33.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              spacing.heightB(68.h),
              SizedBox(
                width: 235.w,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontSize: 32.sp,
                    fontFamily: fonts.bold,
                    color: colors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              spacing.heightB(12.h),
              Text(
                "Happens! let’s reset your password..",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: fonts.medium,
                  color: colors.white,
                ),
              ),
              spacing.heightB(106.h),
              AnimatedSwitcher(
                duration: Duration(milliseconds: 600),
                transitionBuilder: (child, animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                },
                child: isOtpSend == false
                    ? Column(
                        children: [
                          customTextfield(
                            title: "Email/Phone Number",
                            textInput: TextInputType.emailAddress,
                          ),
                          spacing.heightB(113.h),
                          FilledButton(
                            onPressed: () {
                              setState(() {
                                isOtpSend = true;
                              });
                            },
                            child: Text("Send OTP"),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Pinput(
                            controller: pinputController,
                            keyboardType: TextInputType.number,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            length: 5,
                            defaultPinTheme: PinTheme(
                              width: 46.h,
                              height: 46.w,
                              textStyle: TextStyle(
                                fontSize: 22.sp,
                                color: colors.black,
                                fontFamily: fonts.semiBold,
                              ),
                              decoration: BoxDecoration(
                                color: colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: colors.black.withOpacity(
                                      0.1,
                                    ),
                                    offset: Offset(0, 1),
                                    spreadRadius: 1,
                                    blurRadius: 3,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),
                            focusedPinTheme: PinTheme(
                              width: 46.h,
                              height: 46.w,
                              textStyle: TextStyle(
                                fontSize: 22.sp,
                                color: colors.primary,
                                fontFamily: fonts.semiBold,
                              ),
                              decoration: BoxDecoration(
                                color: colors.white,
                                borderRadius: BorderRadius.circular(10.r),
                                boxShadow: [
                                  BoxShadow(
                                    color: colors.black.withOpacity(
                                      0.1,
                                    ),
                                    offset: Offset(0, 1),
                                    spreadRadius: 1,
                                    blurRadius: 3,
                                  ),
                                ],
                                border: Border.all(
                                  color: colors.primary,
                                  width: 2.w,
                                ),
                              ),
                            ),
                          ),
                          spacing.heightB(12.h),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Resend OTP",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: fonts.semiBold,
                                color: colors.primary,
                              ),
                            ),
                          ),
                          spacing.heightB(84.h),
                          FilledButton(
                            onPressed: () {
                              GoRouter.of(context)
                                  .goNamed(Routes.resetpassword.name);
                            },
                            child: Text("Submit"),
                          ),
                        ],
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

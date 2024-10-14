import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:stock_detector/const/global.dart';
import 'package:stock_detector/views/components/bg_widget.dart';
import 'package:stock_detector/views/components/custom_textfield.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isRememberMe = false;
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
                  "Sign in to your Account",
                  style: TextStyle(
                    fontSize: 32.sp,
                    fontFamily: fonts.bold,
                    color: colors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              spacing.heightB(12.h),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).goNamed(Routes.signup.name);
                },
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 12.sp),
                    children: [
                      TextSpan(
                        text: "Don’t have an account? ",
                        style: TextStyle(
                          fontFamily: fonts.medium,
                          color: colors.white,
                        ),
                      ),
                      TextSpan(
                        text: "Sign Up",
                        style: TextStyle(
                          color: colors.white,
                          fontFamily: fonts.semiBold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              spacing.heightB(106.h),
              customTextfield(
                title: "Email",
                textInput: TextInputType.emailAddress,
              ),
              spacing.heightB(16.h),
              customTextfield(
                title: "Password",
                isHide: true,
                textInput: TextInputType.visiblePassword,
                icon: Image.asset(
                  assets.igPasswordHideP,
                ),
              ),
              spacing.heightB(16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: isRememberMe,
                        onChanged: (value) {
                          setState(() {
                            isRememberMe = value!;
                          });
                        },
                        activeColor: colors.primary,
                      ),
                      Text(
                        "Remember Me",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: fonts.medium,
                          color: colors.greyText,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).goNamed(Routes.forgotpassword.name);
                    },
                    child: Text(
                      "Forgot Password ?",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: fonts.semiBold,
                        color: colors.primary,
                      ),
                    ),
                  ),
                ],
              ),
              spacing.heightB(16.h),
              FilledButton(
                onPressed: () {},
                child: Text("Log In"),
              ),
              spacing.heightB(16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 112.w,
                    child: Divider(
                      thickness: 1,
                      color: colors.greyText.withOpacity(0.1),
                    ),
                  ),
                  spacing.widthB(16.w),
                  Text(
                    "Or login with",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: fonts.medium,
                      color: colors.greyText,
                    ),
                  ),
                  spacing.widthB(16.w),
                  SizedBox(
                    width: 112.w,
                    child: Divider(
                      thickness: 1,
                      color: colors.greyText.withOpacity(0.1),
                    ),
                  ),
                ],
              ),
              spacing.heightB(16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:
                    List.generate(lists.socialMediaIconList.length, (index) {
                  return Container(
                    width: 70.5.w,
                    height: 48.h,
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
                    ),
                    child: SvgPicture.asset(
                      height: 18.h,
                      width: 18.h,
                      lists.socialMediaIconList[index],
                      fit: BoxFit.scaleDown,
                    ),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

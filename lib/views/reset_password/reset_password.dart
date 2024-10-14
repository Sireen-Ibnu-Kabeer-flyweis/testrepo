import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:stock_detector/const/global.dart';
import 'package:stock_detector/views/components/bg_widget.dart';
import 'package:stock_detector/views/components/custom_textfield.dart';

class ResetPasswort extends StatelessWidget {
  const ResetPasswort({super.key});

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
                width: 225.w,
                child: Text(
                  "Reset Password",
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
                "Your’e almost done.",
                style: TextStyle(
                  fontFamily: fonts.medium,
                  color: colors.white,
                ),
              ),
              spacing.heightB(106.h),
              customTextfield(
                title: "Password",
                isHide: true,
                textInput: TextInputType.visiblePassword,
                icon: Image.asset(
                  assets.igPasswordHideP,
                ),
              ),
              spacing.heightB(16.h),
              customTextfield(
                title: "Confirm Password",
                isHide: true,
                textInput: TextInputType.visiblePassword,
                icon: Image.asset(
                  assets.igPasswordHideP,
                ),
              ),
              spacing.heightB(16.h),
              FilledButton(
                onPressed: () {
                  GoRouter.of(context).goNamed(Routes.signin.name);
                },
                child: Text("Reset Password"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

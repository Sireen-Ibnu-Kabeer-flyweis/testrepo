import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_detector/const/global.dart';

customTextfield({
  title,
  textInput = TextInputType.text,
  isHide = false,
  icon,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "$title",
        style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: 12.sp,
          fontFamily: fonts.medium,
          color: colors.greyText,
        ),
      ),
      spacing.heightB(6.h),
      Container(
        clipBehavior: Clip.antiAlias,
        height: 46.h,
        decoration: BoxDecoration(
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
        child: TextFormField(
          obscureText: isHide,
          cursorColor: colors.primary,
          decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: colors.white,
            filled: true,
            prefixIcon: icon,
          ),
          keyboardType: textInput,
        ),
      ),
    ],
  );
}

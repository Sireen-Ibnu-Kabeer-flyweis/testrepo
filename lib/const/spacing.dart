import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Spacing {
  SizedBox heightB(height) {
    return SizedBox(
      height: height,
    );
  }

  SizedBox widthB(width) {
    return SizedBox(
      width: width,
    );
  }

  EdgeInsets screenPadding = EdgeInsets.symmetric(horizontal: 16.w);
}

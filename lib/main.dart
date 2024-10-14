import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_detector/const/global.dart';

void main() {
  runApp(const StockDetector());
}

class StockDetector extends StatelessWidget {
  const StockDetector({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(393, 852),
      builder: (context, child) => MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: fonts.regular,
          filledButtonTheme: FilledButtonThemeData(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                colors.primary,
              ),
              minimumSize: WidgetStatePropertyAll(Size(double.infinity, 48.h)),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              textStyle: WidgetStatePropertyAll(
                TextStyle(
                  fontSize: 14.sp,
                  fontFamily: fonts.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

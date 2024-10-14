import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stock_detector/const/global.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  changeScreen() {
    Future.delayed(Duration(milliseconds: 800), () {
      GoRouter.of(context).goNamed(Routes.landing.name);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.white,
      body: Container(
        width: double.infinity,
        padding: spacing.screenPadding,
        child: Center(
          child: Image.asset(assets.appLogo),
        ),
      ),
    );
  }
}

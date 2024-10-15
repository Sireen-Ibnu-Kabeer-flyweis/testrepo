import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stock_detector/const/app_assets.dart';
import 'package:stock_detector/const/app_colors.dart';
import 'package:stock_detector/const/app_fonts.dart';
import 'package:stock_detector/const/app_lists.dart';
import 'package:stock_detector/const/spacing.dart';
import 'package:stock_detector/views/forgot_password/forgot_password.dart';
import 'package:stock_detector/views/home/home.dart';
import 'package:stock_detector/views/landing/landing.dart';
import 'package:stock_detector/views/reset_password/reset_password.dart';
import 'package:stock_detector/views/sign_in/sign_in.dart';
import 'package:stock_detector/views/sign_up/sign_up.dart';
import 'package:stock_detector/views/splash/splash.dart';

// Objects
AppAssets assets = AppAssets();
AppFonts fonts = AppFonts();
AppColors colors = AppColors();
AppLists lists = AppLists();
Spacing spacing = Spacing();

// routes
enum Routes {
  splash,
  landing,
  signin,
  signup,
  forgotpassword,
  resetpassword,
  home,
}

// Gorouter
GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
BuildContext get appContext => navigatorKey.currentState!.context;

GoRouter router = GoRouter(
  navigatorKey: navigatorKey,
  routes: [
    GoRoute(
      path: "/",
      name: Routes.splash.name,
      pageBuilder: (context, state) => animatedScreen(state, Splash()),
    ),
    GoRoute(
      path: "/landing",
      name: Routes.landing.name,
      pageBuilder: (context, state) => animatedScreen(state, Landing()),
    ),
    GoRoute(
      path: "/signin",
      name: Routes.signin.name,
      pageBuilder: (context, state) => animatedScreen(state, SignIn()),
    ),
    GoRoute(
      path: "/signup",
      name: Routes.signup.name,
      pageBuilder: (context, state) => animatedScreen(state, SignUp()),
    ),
    GoRoute(
      path: "/forgotpassword",
      name: Routes.forgotpassword.name,
      pageBuilder: (context, state) => animatedScreen(state, ForgotPassword()),
    ),
    GoRoute(
      path: "/resetpassword",
      name: Routes.resetpassword.name,
      pageBuilder: (context, state) => animatedScreen(state, ResetPasswort()),
    ),
    GoRoute(
      path: "/home",
      name: Routes.home.name,
      pageBuilder: (context, state) => animatedScreen(state, Home()),
    ),
  ],
);

CustomTransitionPage<dynamic> animatedScreen(GoRouterState state, screen) {
  return CustomTransitionPage(
    key: state.pageKey,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
    child: screen,
  );
}

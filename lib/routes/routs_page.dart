import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vip/routes/paths.dart';

import '../features/presentaions/Authentication/login/controller/login_cubit.dart';
import '../features/presentaions/Authentication/login/ui/login_screen.dart';
import '../features/presentaions/Home/controller/home_cubit.dart';
import '../features/presentaions/Home/ui/home.dart';
import '../features/presentaions/OnBoarding/controller/on_boarding_controller_cubit.dart';
import '../features/presentaions/OnBoarding/ui/onboarding_screen.dart';

class AppRouteManger {
  static String get initial {
    // if (!OnBoardingControllerCubit.isPassedOnbord) {
    return AppPaths.onBoardingScreen;
    // }
    //
    // if (VerificationScreenCubit.isHaveSavedPhone) {
    //   return AppPaths.signUp;
    // }
    // if (!LoginWithPassCubit.isAuthed) {
    //   return AppPaths.loginWithPass;
    // } else {
    //   return AppPaths.homeScreen;
    // }
  }

  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppPaths.onBoardingScreen:
        return _materialRoute(

            // BlocProvider(
          // create: (context) => OnBoardingControllerCubit(),
          // child:
    OnBoardingScreen(),
        // )
    );
      case AppPaths.loginWithPass:
        return _materialRoute(BlocProvider(
          create: (context) => LoginCubit(),
          child: const LoginScreen(),
        ));
      case AppPaths.homeScreen:
        return _materialRoute(BlocProvider(
          create: (context) => HomeCubit(),
          child: const Home(),
        ));

      default:
        return _materialRoute(const Scaffold());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
    // return MaterialPageRoute(builder: (_) => ChuckerFlutterPage(child: view));
  }
}

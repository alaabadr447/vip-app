





import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vip/routes/paths.dart';

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

          //    BlocProvider(
          // create: (context) => OnBoardingControllerCubit(),
          // child:
          const OnBoardingScreen(),
        // )

         );


      default:
        return _materialRoute(const Scaffold());
     }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) =>   view);
    // return MaterialPageRoute(builder: (_) => ChuckerFlutterPage(child: view));
  }
}
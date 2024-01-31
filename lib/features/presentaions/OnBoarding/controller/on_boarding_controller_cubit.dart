
import 'package:equatable/equatable.dart';
import 'package:fadingpageview/fadingpageview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_context/one_context.dart';
import '../../../../common/consts/assets/app_images.dart';
import '../../../../common/consts/strings/app_strings.dart';
import '../../../../helpers/Cache/cache_helper.dart';

import '../../../../routes/paths.dart';
import '../model/onboard_model.dart';

part 'on_boarding_controller_state.dart';

class OnBoardingControllerCubit extends Cubit<OnBoardingState> {
  OnBoardingControllerCubit() : super(OnBoardingInitial()) ;

  static OnBoardingControllerCubit get(context) => BlocProvider.of<OnBoardingControllerCubit>(context);

  List<OnboardingModel> tabs = [
    OnboardingModel(
      Images.onboard1,
      AppStrings.onBardTitle1,
      AppStrings.onBardDesc1,
    ),
    OnboardingModel(
      Images.onboard2,
      AppStrings.onBardTitle2,
      AppStrings.onBardDesc2,
    ),
    OnboardingModel(
      Images.onboard3,
      AppStrings.onBardTitle3,
      AppStrings.onBardDesc3,
    ),
  ];

  final pageController = FadingPageViewController();

  onPageChanged  () {

    if (pageController.currentPage + 1 == tabs.length) {
      onGetStart( );
     } else {
      pageController.next();
    }
      print('current:: ${ pageController.currentPage}');
    emit(OnBoardingChangePage(index: pageController.currentPage));

  }

  @override
  Future<void> close() {
    // pageController.();
    // pageController.dispose();
    return super.close();
  }

  static String get onBordKey => "onBordKey";

  static bool get isPassedOnbord =>
      CacheHelper.getValue(key: onBordKey) ?? false;



  onGetStart(   ) async {
    CacheHelper.saveData(key: onBordKey, value: true).whenComplete(
        ()   {
          // Navigator.of(context). pushReplacementNamed(AppPaths.loginWithPass);
// go to second page using MaterialPageRoute
          OneContext().pushNamed(AppPaths.loginWithPass);
        });
}





}

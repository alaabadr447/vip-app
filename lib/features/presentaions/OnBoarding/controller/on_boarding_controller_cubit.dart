
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      Images.onboard1,
      AppStrings.onBardTitle2,
      AppStrings.onBardDesc2,
    ),
    OnboardingModel(
      Images.onboard1,
      AppStrings.onBardTitle3,
      AppStrings.onBardDesc3,
    ),
  ];

  final pageController = PageController();

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;


bool get isLastPage => _currentIndex == tabs.length - 1;

  onPageChanged(value)  {
    _currentIndex = value;
    emit(OnBoardingChangePage(index: _currentIndex));
  }

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }

  static String get onBordKey => "onBordKey";

  static bool get isPassedOnbord =>
      CacheHelper.getValue(key: onBordKey) ?? false;



  onGetStart(BuildContext context) async {
    CacheHelper.saveData(key: onBordKey, value: true).whenComplete(
        ()   {
          Navigator.of(context). pushReplacementNamed(AppPaths.loginWithPass);

  });
}





}


import 'dart:math';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../common/consts/strings/app_strings.dart';
import '../../../../common/style/app_style.dart';
import '../../../../theme/app-colors/app_colors_dark.dart';
import '../../../../widgets/custom_button.dart';
import '../componants/page_view_body.dart';
import '../controller/on_boarding_controller_cubit.dart';
import 'package:fadingpageview/fadingpageview.dart';

class OnBoardingScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColorsDark.instance.primaryColorBlack,
        body: Stack(
          alignment: Alignment.centerLeft,

          children: [

        // BlocBuilder<OnBoardingControllerCubit, OnBoardingState>(
        //     bloc: OnBoardingControllerCubit(),
        //     builder: (context, state) {
        //       OnBoardingControllerCubit cubit =
        //           OnBoardingControllerCubit.get(context);
        //       return  PageView.builder(
        //           controller: cubit.pageController,
        //           itemCount: cubit.tabs.length,
        //           physics: const PageScrollPhysics(),
        //           pageSnapping: false,
        //           itemBuilder: (BuildContext context, int index) {
        //             var item = cubit.tabs[index];
        //             return PageViewBody(
        //               image: item.image,
        //               title: item.title,
        //               subTitle: item.subtitle,
        //             );
        //           },
        //           onPageChanged: cubit.onPageChanged,
        //
        //       );}),
            BlocBuilder<OnBoardingControllerCubit, OnBoardingState>(
                bloc: OnBoardingControllerCubit(),
                builder: (context, state) {
                  OnBoardingControllerCubit cubit =
                  OnBoardingControllerCubit.get(context);
                  return GestureDetector(
                    onTap:  cubit.onPageChanged,
                    child: FadingPageView(
                      controller: cubit.pageController,

                      disableWhileAnimating: false,
                        fadeOutDuration:const Duration(milliseconds: 350),
                        fadeInDuration:const Duration(milliseconds: 500),
                      itemBuilder: (BuildContext context, int index) {
                        var item = cubit.tabs[index];
                        return PageViewBody(
                          image: item.image,
                          title: item.title,
                          subTitle: item.subtitle,
                        );
                      },
                      // onPageChanged: cubit.onPageChanged,
                    ),
                  );
                }
            ),



            Positioned(
                bottom: 50.h,
                left: 0,
                right: 0,
                child: BlocBuilder<OnBoardingControllerCubit, OnBoardingState>(

                  builder: (context, state) {
                    var cubit = OnBoardingControllerCubit.get(context);
                    return DotsIndicator(
                      dotsCount: cubit.tabs.length,
                      position: cubit.pageController.currentPage,
                      decorator: DotsDecorator(
                        color: Theme.of(context).hintColor,
                        activeColor: Theme.of(context).primaryColor,
                      ),
                    );
                  },
                )),
       Positioned(
                top: 300.h,
           left: 20.w,
                child: BlocBuilder<OnBoardingControllerCubit, OnBoardingState>(

                  builder: (context, state) {
                    var cubit = OnBoardingControllerCubit.get(context);
                    return    CustomButton(
                        buttonText: AppStrings.getStarted,
                        isLoading: false,
                        width: 150,
                        backgroundColor: Theme.of(context).primaryColor,
                        radius: 10,
                        textColor: Theme.of(context).colorScheme.outlineVariant,
                        onPressed: cubit.onPageChanged


                    );
                  },
                )),


             ],
        ));
  }
}

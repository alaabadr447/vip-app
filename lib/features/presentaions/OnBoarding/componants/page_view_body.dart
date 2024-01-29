import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vip/common/consts/strings/app_strings.dart';

import '../../../../common/dimensions.dart';
import '../../../../common/style/app_colors.dart';
import '../../../../common/style/app_style.dart';
import '../../../../common/style/test_style.dart';
import '../../../../widgets/custom_button.dart';
import '../controller/on_boarding_controller_cubit.dart';

class PageViewBody extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;

  const PageViewBody({
    super.key,
    required this.image,
    required this.subTitle,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned.fill(
            child: Image.asset(
          image,
          fit: BoxFit.fill,
        )),
        Positioned(
          top: 145.h,
          left: 20.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    title,
                    style: TextStyle(
                        fontSize: 30.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  )),
              K.sizedBoxH,
              SizedBox(
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: Text(
                    subTitle,
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  )),
              K.sizedBoxH,
              CustomButton(
                  buttonText: AppStrings.getStarted,
                  isLoading: false,
                  width: 150,
                  backgroundColor: Theme.of(context).primaryColor,
                  radius: 10,
                  textColor: Theme.of(context).colorScheme.outlineVariant,
                  onPressed: () {
                    // if (cubit.isLastPage) {
                    //   cubit.onGetStart(context);
                    // } else {
                    //   cubit.pageController.nextPage(
                    //     duration: const Duration(milliseconds: 300),
                    //     curve: Curves.easeIn,
                    //   );
                    // }
                  }),

  BlocBuilder<OnBoardingControllerCubit, OnBoardingState>(
              builder: (context, state) {
                var cubit = OnBoardingControllerCubit.get(context);
                return   DotsIndicator(
                  dotsCount: cubit.tabs.length,
                  position: cubit.currentIndex,
                  decorator: DotsDecorator(
                    color: Theme.of(context).hintColor,
                    activeColor: Theme.of(context).primaryColor,
                  ),


                );
              },
            ),
            ],
          ),
        )
      ],
    );
  }
}

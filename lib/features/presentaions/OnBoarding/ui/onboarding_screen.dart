import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/style/app_style.dart';
import '../componants/page_view_body.dart';
import '../controller/on_boarding_controller_cubit.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          K.sizedBoxH,
          BlocBuilder<OnBoardingControllerCubit, OnBoardingState>(
            bloc: OnBoardingControllerCubit(),
            builder: (context, state) {
              OnBoardingControllerCubit cubit =
                  OnBoardingControllerCubit.get(context);
              return Expanded(
                child: PageView.builder(
                  controller: cubit.pageController,
                  itemCount: cubit.tabs.length,
                  physics: const PageScrollPhysics(),
                  pageSnapping: false,
                  itemBuilder: (BuildContext context, int index) {
                    var item = cubit.tabs[index];
                    return PageViewBody(
                      image: item.image,
                      title: item.title,
                      subTitle: item.subtitle,
                    );
                  },
                  onPageChanged: cubit.onPageChanged,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

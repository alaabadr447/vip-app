import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vip/common/consts/strings/app_strings.dart';
import '../../../../common/style/app_style.dart';
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
    return BlocBuilder<OnBoardingControllerCubit, OnBoardingState>(
        builder: (context, state) {
      var cubit = OnBoardingControllerCubit.get(context);
      return Stack(
      children: [
        Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              image,
              fit: BoxFit.contain,
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

            ],
          ),
        ),
      ],
    ) ;}


    );
  }
}

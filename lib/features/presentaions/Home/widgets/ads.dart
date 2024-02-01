import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../common/consts/assets/app_images.dart';

class AdsBody extends StatelessWidget {
  const AdsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CarouselSlider.builder(
          // carouselController: controller.carouselController,
          options: CarouselOptions(
              autoPlay: true,
              enableInfiniteScroll: true,
              // aspectRatio: 2.0,
              enlargeCenterPage: false,
              // height: MediaQuery.of(context).size.height / 4.3,
              viewportFraction: 1,
              onPageChanged: (index1, reason) {
                // controller.currentImageIndex.value = index1;
              }),
                itemCount: 5,
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Column(
              children: [
                Image.asset(Images.onboard1),
                AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 5,
                  effect: ExpandingDotsEffect(
                      dotHeight: 6,
                      dotWidth: 6,
                      activeDotColor: Theme.of(context).primaryColor,
                      dotColor: Colors.white),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}

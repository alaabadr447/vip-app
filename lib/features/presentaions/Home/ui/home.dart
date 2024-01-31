

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vip/features/presentaions/Home/widgets/ads.dart';
import 'package:vip/features/presentaions/Home/widgets/category_body.dart';

import '../../../../common/consts/assets/app_images.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return     Scaffold(
        extendBodyBehindAppBar: true,

      body: DecoratedBox(
      decoration: BoxDecoration(color: Colors.blue,
      image: DecorationImage(image: AssetImage(Images.linear,), fit: BoxFit.cover)),
     child:Column(
    children: [


      Container(
        height: 200,
      )
    ],
    ),
    ));
  }
}

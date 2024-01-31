import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:one_context/one_context.dart';
import 'package:vip/routes/routs_page.dart';
import 'package:vip/theme/app_theme_light.dart';
import 'package:vip/widgets/multi_provider_widget.dart';
import 'package:vip/widgets/screen_util.dart';

class VipApp extends StatelessWidget {
  const VipApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProviderWidget(
      view: MaterialApp(
        theme: lightThemeData,
        builder: OneContext().builder,

        navigatorKey: OneContext().key,
        initialRoute: AppRouteManger.initial,
        onGenerateRoute: AppRouteManger.onGenerateRoutes,

    ));
  }
}

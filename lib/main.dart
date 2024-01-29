 import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vip/vip_app.dart';
import 'package:vip/widgets/screen_util.dart';

import 'helpers/Observer/app_bloc_observer.dart';
import 'injection_container.dart';
bool isJustUiTest = false;

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  await setUpInitializeApp();


  runApp(  const ScreenUtilInitWidget(
      child: VipApp())  );
}




import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/presentaions/OnBoarding/controller/on_boarding_controller_cubit.dart';
import 'helpers/Cache/cache_helper.dart';

final locator = GetIt.instance;

final getIt = locator();

setUpInitializeApp() async {
///Cache data
  final sharedPref = await SharedPreferences.getInstance();

  locator.registerLazySingleton<SharedPreferences>(() => sharedPref);

  await CacheHelper.init();






  ///Cubit

  locator.registerLazySingleton<OnBoardingControllerCubit>(() => OnBoardingControllerCubit());

}

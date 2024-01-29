import 'package:get_it/get_it.dart';

import 'features/presentaions/OnBoarding/controller/on_boarding_controller_cubit.dart';

final locator = GetIt.instance;

final getIt = locator();

setUpInitializeApp() async {


  locator.registerLazySingleton<OnBoardingControllerCubit>(() => OnBoardingControllerCubit());

}

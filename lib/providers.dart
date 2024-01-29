





import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/presentaions/OnBoarding/controller/on_boarding_controller_cubit.dart';
import 'injection_container.dart';

class Providers {
  static get getproviders => [


BlocProvider<OnBoardingControllerCubit>(create: (_) => locator<OnBoardingControllerCubit>()),
// BlocProvider<LocaleBloc>(create: (_) => locator<LocaleBloc>()),
// BlocProvider<SettingsBloc>(create: (_) => locator<SettingsBloc>()),
// BlocProvider<ThemeBloc>(create: (_) => locator<ThemeBloc>()),
// BlocProvider<HomeBloc>(create: (_) => locator<HomeBloc>()),
// BlocProvider<TasksBloc>(create: (_) => locator<TasksBloc>()..add(LoadTasksScreenEvent(isDaily: true, widget: SizedBox(), keyOf: 'daily'))),
// BlocProvider<StartMaintenanceControllerBloc>(create: (_) => locator<StartMaintenanceControllerBloc>()),
// BlocProvider<TwoItemsOptionBloc>(create: (_) => locator<TwoItemsOptionBloc>()),
// BlocProvider<PolicyBloc>(create: (_) => locator<PolicyBloc>()),
// BlocProvider<ContactUsBloc>(create: (_) => locator<ContactUsBloc>()),
// BlocProvider<AboutUsCubit>(create: (_) => locator<AboutUsCubit>()),
// BlocProvider<CompleteDataCubit>(create: (_) => locator<CompleteDataCubit>()),
// BlocProvider<BaseCubit>(create: (_) => locator<BaseCubit>()),
// BlocProvider<StartMCubit>(create: (_) => locator<StartMCubit>()),
// BlocProvider<PickImageCubit>(create: (_) => locator<PickImageCubit>()),
// BlocProvider<LogoutCubit>(create: (_) => locator<LogoutCubit>()),
// BlocProvider<TasksCubit>(create: (_) => locator<TasksCubit>()),
// //  locator.registerLazySingleton<GlobalCubit>(  () => TasksCubit(locator<ApiService>()));
// ],
  ];
}

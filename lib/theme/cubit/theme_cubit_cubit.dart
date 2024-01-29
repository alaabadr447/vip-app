import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../helpers/Cache/cache_helper.dart';


part 'theme_cubit_cubit.freezed.dart';
part 'theme_cubit_state.dart';

class ThemeCubitCubit extends Cubit<ThemeCubitState> {
  ThemeCubitCubit() : super(const ThemeCubitState.initial());

  String themeKey = 'theme_cubit_cubit';

  ThemeMode _current = ThemeMode.light;
  ThemeMode get current => _current;

  static get(context) => BlocProvider.of<ThemeCubitCubit>(context);

  saveThemeToLocal(ThemeMode mode) {
    CacheHelper.saveData(key: themeKey, value: mode.name);
  }

  ThemeMode getThemeFromLocal() {
    var state = CacheHelper.getValue(
      key: themeKey,
    );

    if (state == null) {
      return ThemeMode.system;
    } else {
      return ThemeMode.values.firstWhere((element) => element.name == state);
    }
  }

  bool get isLightTheme => _current == ThemeMode.light;
  bool get isDarkTheme => _current == ThemeMode.dark;
  void getCurrentTheme() {
    _current = getThemeFromLocal();
    emit(const ThemeCubitState.getCurrent());
  }

  void toDark() {
    _current = ThemeMode.dark;
    saveThemeToLocal(_current);
    emit(const ThemeCubitState.toDark());
  }

  void toLight() {
    _current = ThemeMode.light;
    saveThemeToLocal(_current);
    emit(const ThemeCubitState.toLight());
  }

  void toggleTheme() {
    print(" toggleTheme ${_current.name} ");
    if (isDarkTheme) {
      toLight();
      return;
    }
    if (isLightTheme) {
      toDark();
      return;
    }
    print(" toggleTheme ${_current.name} ");
  }
}

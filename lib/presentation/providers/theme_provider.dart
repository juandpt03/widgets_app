import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//Un simple boolean
final isDarkModeProvider = StateProvider<bool>((isDarkMode) => false);
//Lista de colores inmutables
final colorListProvider = Provider<List<Color>>((ref) => colorList);
//Un simple entero
final selectedColorProvider = StateProvider<int>((ref) => 0);

//StateNotifierProvider
final themeNotifierProvider =
    StateNotifierProvider<ThemeContoller, AppTheme>((ref) => ThemeContoller());
//Controller o Notifier

class ThemeContoller extends StateNotifier<AppTheme> {
  ThemeContoller() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(
    int colorIndex,
  ) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}

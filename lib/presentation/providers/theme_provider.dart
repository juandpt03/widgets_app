import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//Un simple boolean
final isDarkModeProvider = StateProvider<bool>((isDarkMode) => false);
//Lista de colores inmutables
final colorListProvider = StateProvider<List<Color>>((ref) => colorList);
//Un simple entero
final selectedColorProvider = StateProvider<int>((ref) => 0);

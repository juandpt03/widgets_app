import 'package:flutter/material.dart';

const List<Color> colorList = [
  Colors.blueAccent,
  Colors.redAccent,
  Colors.greenAccent,
  Colors.purpleAccent,
  Colors.indigoAccent,
  Colors.deepOrangeAccent,
  Colors.yellowAccent,
  Colors.lightGreenAccent,
  Colors.limeAccent,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'selectedColor must be greater then 0'),
        assert(selectedColor < colorList.length,
            'selectedColor must be less or equal than ${colorList.length}');

  ThemeData getTheme() => ThemeData(
        appBarTheme: const AppBarTheme(centerTitle: false),
        useMaterial3: true,
        colorSchemeSeed: colorList[selectedColor],
      );
}

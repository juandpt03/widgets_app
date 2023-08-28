import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/localisation/localizations.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChanger extends ConsumerWidget {

  const ThemeChanger({super.key});
  static const route = 'theme_changer';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final modeDark = ref.watch(themeNotifierProvider).isDarkMode;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Theme Changer'),
          actions: [
            IconButton(
              icon: Icon(modeDark ? Icons.dark_mode : Icons.light_mode),
              onPressed: () {
                ref.read(themeNotifierProvider.notifier).toggleDarkMode();
              },
            ),
          ],
        ),
        body: const _ThemeChangerView(),);
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    final int selectedColor = ref.watch(themeNotifierProvider).selectedColor;

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final color = colors[index];
        return RadioListTile(
          title: Text(
            AppLocalizations.of(context)!.text('this_color'),
            style: TextStyle(color: color),
          ),
          subtitle: Text('${color.value}'),
          value: index,
          groupValue: selectedColor,
          activeColor: color,
          onChanged: (value) {
            ref.read(themeNotifierProvider.notifier).changeColorIndex(index);
          },
        );
      },
    );
  }
}

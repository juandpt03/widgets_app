import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChanger extends ConsumerWidget {
  static const route = 'theme_changer';

  const ThemeChanger({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final modeDark = ref.watch(isDarkModeProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('ThemeChanger'),
          actions: [
            IconButton(
              icon: Icon(modeDark ? Icons.dark_mode : Icons.light_mode),
              onPressed: () {
                ref.read(isDarkModeProvider.notifier).state = !modeDark;
              },
            )
          ],
        ),
        body: const _ThemeChangerView());
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    final int selectedColor = ref.watch(selectedColorProvider);

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final color = colors[index];
        return RadioListTile(
          title: Text(
            'Este color',
            style: TextStyle(color: color),
          ),
          subtitle: Text('${color.value}'),
          value: index,
          groupValue: selectedColor,
          activeColor: color,
          onChanged: (value) {
            ref.read(selectedColorProvider.notifier).update((state) => index);
          },
        );
      },
    );
  }
}

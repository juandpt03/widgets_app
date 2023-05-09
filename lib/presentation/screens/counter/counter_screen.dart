import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const route = 'counter_screen';
  const CounterScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final style = Theme.of(context).textTheme.titleLarge;
    final bool modeDark = ref.watch(isDarkModeProvider);
    final int valor = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
            icon: Icon(modeDark ? Icons.dark_mode : Icons.light_mode),
            onPressed: () {
              ref.read(isDarkModeProvider.notifier).state = !modeDark;
            },
          )
        ],
      ),
      body: Center(
        child: Text(
          'Valor: $valor',
          style: style,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
          //Otra alternativa es
          // ref.read(counterProvider.notifier).update((state) => state + 1);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

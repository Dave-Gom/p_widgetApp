import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/presentation/providers/counter_provider.dart';
import 'package:widget_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const name = "counter_screen";

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final clickcounter = ref.watch(counterProvider);
    final darkMode = ref.watch(isDarkModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Screen"),
        actions: [
          IconButton(
              onPressed: () {
                ref.read(isDarkModeProvider.notifier).update((state) => !state);
              },
              icon: darkMode
                  ? FadeIn(
                      delay: const Duration(microseconds: 300),
                      child: const Icon(Icons.dark_mode_outlined),
                    )
                  : FadeIn(
                      delay: const Duration(microseconds: 300),
                      child: const Icon(Icons.light_mode_outlined),
                    ))
        ],
      ),
      body: Center(
          child: Text('Valor: $clickcounter',
              style: Theme.of(context).textTheme.titleLarge)),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // ref.read(counterProvider.notifier).update((state) => state + 1);
            ref.read(counterProvider.notifier).state++;
          },
          child: Icon(Icons.add_rounded)),
    );
  }
}

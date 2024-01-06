import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = "button_screen";
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons screen"),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SizedBox(
          child: Wrap(
            spacing: 10,
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text("Elevated")),
              const ElevatedButton(onPressed: null, child: Text("Disabled")),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.access_alarm_rounded),
                  label: const Text("Elevated icon")),
              FilledButton(onPressed: () {}, child: const Text("filled")),
              FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.wrong_location),
                  label: const Text("Filled icon")),
              OutlinedButton(onPressed: () {}, child: const Text("Outline")),
              OutlinedButton.icon(
                onPressed: () {},
                label: const Text("Outline"),
                icon: const Icon(Icons.work_outlined),
              ),
              TextButton(onPressed: () {}, child: const Text("Textbtn")),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add_box_outlined),
                label: const Text("Textbtn"),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.account_box)),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.account_box),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(colors.primary)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

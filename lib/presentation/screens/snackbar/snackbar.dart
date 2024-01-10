import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = "snackbar_screen";
  const SnackBarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text("hola mundo"),
      action: SnackBarAction(
        label: "Ok!",
        onPressed: () {},
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text(
          "¿Estas seguro?",
        ),
        content: const Text("lorem ipsum dolor sit amet"),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text("cancelar")),
          FilledButton(
              onPressed: () => context.pop(), child: const Text("Aceptar"))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Snacbars y dialogos")),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: const Text("Mostrar snackbar"),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                    context: context, children: [const Text("Lorem ipsum")]);
              },
              child: const Text("Licencias usadas")),
          FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text("Mostrar dialogo de pantallas"))
        ]),
      ),
    );
  }
}

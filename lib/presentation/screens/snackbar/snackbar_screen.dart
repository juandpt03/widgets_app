import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const route = 'snackbar_screen';
  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(
        label: 'ok',
        onPressed: () {},
      ),
      duration: const Duration(seconds: 1),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('¿Estás seguro?'),
        content: const Text(
          'Nisi ea ea enim pariatur consectetur consectetur enim pariatur occaecat esse consectetur. Sint cillum dolore esse enim. Esse commodo est dolore anim cillum in proident.',
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: const Text('Cancelar'),
          ),
          FilledButton(
            onPressed: () {
              context.pop();
            },
            child: const Text('Confirmar'),
          )
        ],
      ),
    );
  }

  const SnackbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBars y Diálogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text(
                        'Minim id in est proident labore laboris consectetur nisi aute pariatur reprehenderit enim aliquip aliquip. Dolore nisi Lorem do cillum irure fugiat. Et duis in anim eiusmod magna anim aliquip id pariatur. Magna adipisicing nulla ex nulla quis dolore aliquip fugiat. Dolore amet laborum consequat amet culpa. Do aliquip sit ut voluptate cillum velit dolor nostrud elit consequat eu est. Laboris sunt in mollit anim incididunt ex cillum.')
                  ],
                );
              },
              child: const Text('Licencias usadas'),
            ),
            FilledButton.tonal(
              onPressed: () {
                openDialog(context);
              },
              child: const Text('Mostrar Diálogo'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showCustomSnackbar(context);
        },
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}

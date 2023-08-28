import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:widgets_app/config/localisation/localizations.dart';
import 'package:widgets_app/models/locale_model.dart';

class SnackbarScreen extends StatelessWidget {
  static const route = 'snackbar_screen';
  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: Text(AppLocalizations.of(context)!.text('hello_world')),
      action: SnackBarAction(
        label: 'ok',
        onPressed: () {},
      ),
      duration: const Duration(seconds: 1),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    final LocaleModel st = AppLocalizations.of(context)!.value();
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: Text(st.youreSure),
        content: Text(st.agreeMsg),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(st.cancel),
          ),
          FilledButton(
            onPressed: () {
              context.pop();
            },
            child: Text(st.confirm),
          ),
        ],
      ),
    );
  }

  const SnackbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///
    /// Class File with localised text
    ///
    final LocaleModel st = AppLocalizations.of(context)!.value();
    return Scaffold(
      appBar: AppBar(
        title: Text(st.snackbarsDialogs),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [Text(st.dialogMsg)],
                );
              },
              child: Text(st.licenseUsed),
            ),
            FilledButton.tonal(
              onPressed: () {
                openDialog(context);
              },
              child: Text(st.showDialog),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showCustomSnackbar(context);
        },
        label: Text(st.showSnackbar),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}

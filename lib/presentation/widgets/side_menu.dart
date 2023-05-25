import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/localisation/localizations.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/models/language_model.dart';
import 'package:widgets_app/presentation/providers/language_provider.dart';

class SideMenu extends ConsumerWidget {
  SideMenu(this.scaffoldKey, {super.key});

  final GlobalKey<ScaffoldState> scaffoldKey;
  final ValueNotifier<int> navDrawerIndex = ValueNotifier(0);
  @override
  Widget build(BuildContext context, ref) {
    final LanguageEntity locale = ref.watch(localeProvider) ??
        const LanguageEntity(code: "en", value: "IN", text: "Emglish");
    return ValueListenableBuilder(
      valueListenable: navDrawerIndex,
      builder: (BuildContext context, int value, Widget? child) {
        return NavigationDrawer(
          selectedIndex: value,
          onDestinationSelected: (value) {
            navDrawerIndex.value = value;
            final menuItem = appMenuItems[value];
            context.push(menuItem.link);
            scaffoldKey.currentState?.closeDrawer();
          },
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 25, bottom: 20),
              child: Text('Main'),
            ),
            ...appMenuItems.sublist(0, 3).map(
                  (item) => NavigationDrawerDestination(
                    icon: Icon(item.icon),
                    label: Text(AppLocalizations.of(context)!.text(item.title)),
                  ),
                ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 27),
              child: Divider(),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 25, bottom: 30),
              child: Text('More options'),
            ),
            ...appMenuItems.sublist(3).map(
                  (item) => NavigationDrawerDestination(
                    icon: Icon(item.icon),
                    label: Text(
                      AppLocalizations.of(context)!.text(item.title),
                    ),
                  ),
                ),
            DropdownButton<LanguageEntity>(
              underline: const SizedBox(),
              padding: const EdgeInsets.symmetric(horizontal: 35),
              hint: Text(
                locale.text ?? "Select Language",
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
              items: [
                for (var i = 0; i < Languages.languages.length; i++)
                  DropdownMenuItem(
                    value: Languages.languages[i],
                    child: Text(
                      Languages.languages[i].text ?? "",
                    ),
                  )
              ],
              onChanged: (value) {
                if (value != null) {
                  ref.read(localeProvider.notifier).updateLang(value);
                }
              },
            ),
          ],
        );
      },
    );
  }
}

import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

//
const List<MenuItem> appMenuItems = [
  MenuItem(
      title: 'buttons',
      subTitle: 'sub_buttons',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'cards',
      subTitle: 'sub_cards',
      link: '/cards',
      icon: Icons.card_membership_outlined),
  MenuItem(
      title: 'progress_indicators',
      subTitle: 'sub_proInd',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'snackbars_dialogs',
      subTitle: 'sub_snack_dia',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuItem(
      title: 'anim_contain',
      subTitle: 'sub_anim_cont',
      link: '/animated',
      icon: Icons.check_box_outline_blank_outlined),
  MenuItem(
      title: 'ui_cont_tiles',
      subTitle: 'sub_ui_cont_tiles',
      link: '/ui_controls',
      icon: Icons.car_rental_sharp),
  MenuItem(
      title: 'app_intro',
      subTitle: 'app_intro_sub',
      link: '/tutorial',
      icon: Icons.accessibility_new_rounded),
  MenuItem(
      title: 'infinite_scroll',
      subTitle: "sub_infi_scroll",
      link: '/infinite',
      icon: Icons.list_alt_outlined),
  MenuItem(
      title: 'counter_sceen',
      subTitle: 'sub_counter',
      link: '/counter',
      icon: Icons.numbers),
  MenuItem(
      title: 'change_theme',
      subTitle: 'change_apptheme',
      link: '/theme_changer',
      icon: Icons.color_lens_outlined),
];

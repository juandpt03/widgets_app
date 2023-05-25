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

const List<MenuItem> appMenuItems = [
  MenuItem(
      title: 'buttons',
      subTitle: 'var_buttons',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Un Contendor estilizado',
      link: '/cards',
      icon: Icons.card_membership_outlined),
  MenuItem(
      title: 'ProgresIndicators',
      subTitle: 'Generales y Controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars y diálogos',
      subTitle: 'Indicadores en pantalla',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animated Container',
      subTitle: 'Stateful Widget animado',
      link: '/animated',
      icon: Icons.check_box_outline_blank_outlined),
  MenuItem(
      title: 'UI Controls + Tiles ',
      subTitle: 'Una serie de controles de Flutter',
      link: '/ui_controls',
      icon: Icons.car_rental_sharp),
  MenuItem(
      title: 'Introudcción a la aplicación',
      subTitle: 'Pequeño Tutorial introductorio',
      link: '/tutorial',
      icon: Icons.accessibility_new_rounded),
  MenuItem(
      title: 'Infinite Scroll y Pull',
      subTitle: 'Listas infinitas y pull to refresh',
      link: '/infinite',
      icon: Icons.list_alt_outlined),
  MenuItem(
      title: 'CounterSceen',
      subTitle: 'Ejercicio con Riverpod',
      link: '/counter',
      icon: Icons.numbers),
  MenuItem(
      title: 'Cambiar Tema',
      subTitle: 'Cambiar Tema de la App',
      link: '/theme_changer',
      icon: Icons.color_lens_outlined),
];

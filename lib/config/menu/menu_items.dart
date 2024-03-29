import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subtitle,
      required this.link,
      required this.icon});
}

const appMenuITems = <MenuItem>[
  MenuItem(
      title: "Bototnes",
      subtitle: "Varios Botones",
      link: "/buttons",
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: "Tarjetas",
      subtitle: "Un constructor estilizado",
      link: "/cards",
      icon: Icons.credit_card),
  MenuItem(
      title: "Progress indicartos",
      subtitle: "Generales y controlados",
      link: "/progress",
      icon: Icons.refresh_rounded),
  MenuItem(
      title: "Snackbars y dialogos",
      subtitle: "Snackbars y dialogos",
      link: "/snackbars",
      icon: Icons.info_outline),
  MenuItem(
      title: "Animated continer",
      subtitle: "Statefull widget animado",
      link: "/animated",
      icon: Icons.check_box_outlined),
  MenuItem(
      title: "UI controls",
      subtitle: "Statefull widget animado",
      link: "/ui-controls",
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: "introducciona a la app",
      subtitle: "mi onboarding",
      link: "/tutorial",
      icon: Icons.accessible_rounded),
  MenuItem(
      title: "Infinite sroll",
      subtitle: "Listas infinitas y pull to refresh",
      link: "/infinity",
      icon: Icons.list_alt_rounded),
  MenuItem(
      title: "Riverpod Counter",
      subtitle: "Un contador",
      link: "/counterScreen",
      icon: Icons.calculate_rounded),
  MenuItem(
      title: "Cambio de tema con Reverpod",
      subtitle: "Cambia el tema de la app",
      link: "/themeChanger",
      icon: Icons.color_lens_outlined)
];

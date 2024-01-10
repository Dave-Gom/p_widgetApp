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
      icon: Icons.check_box_outlined)
];

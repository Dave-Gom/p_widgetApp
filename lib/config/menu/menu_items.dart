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
      icon: Icons.credit_card)
];
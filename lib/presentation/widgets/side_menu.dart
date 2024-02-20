import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_app/config/menu/menu_items.dart';

class SideMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const SideMenu({super.key, required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;

    return NavigationDrawer(
        onDestinationSelected: (value) {
          setState(() {
            navDrawerIndex = value;
          });

          final menuItem = appMenuITems[value];
          context.push(menuItem.link);
          widget.scaffoldKey.currentState?.closeDrawer();
        },
        children: [
          Padding(padding: EdgeInsets.fromLTRB(28, hasNotch ? 10 : 20, 26, 10)),
          ...appMenuITems.sublist(0, 3).map(
                (item) => NavigationDrawerDestination(
                    icon: Icon(item.icon), label: Text(item.title)),
              ),
          const Padding(
            padding: EdgeInsets.fromLTRB(18, 16, 16, 10),
            child: Divider(),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 10, 26, 10),
            child: Text("More options"),
          ),
          ...appMenuITems.sublist(3).map(
                (item) => NavigationDrawerDestination(
                    icon: Icon(item.icon), label: Text(item.title)),
              ),
        ]);
  }
}

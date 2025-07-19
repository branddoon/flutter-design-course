import 'package:flutter/material.dart';
import 'package:flutter_design/data/data_items_menu.dart';
import 'package:go_router/go_router.dart';

class SideMenu extends StatefulWidget {

  final GlobalKey<ScaffoldState> scaffoldkey;

  const SideMenu({super.key, required this.scaffoldkey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {

  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {

    final hastNotch = MediaQuery.of(context).viewPadding.top > 35;

    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value){
        setState(() {
          navDrawerIndex = value;
        });
        final itemMenu = dataItemsMenu[value];
        context.push(itemMenu.url);
        widget.scaffoldkey.currentState?.closeDrawer();
      },
      children: [
        Padding(padding: EdgeInsets.fromLTRB(28, hastNotch ? 10 : 20 , 16, 10)),
        ...dataItemsMenu.sublist(0,3).map((item) =>  NavigationDrawerDestination(icon: Icon(item.icon), label: Text(item.title))),
        Padding(padding: EdgeInsets.fromLTRB(28, 10, 16, 10), child: Text('More options'),),
        ...dataItemsMenu.sublist(3).map((item) =>  NavigationDrawerDestination(icon: Icon(item.icon), label: Text(item.title))),
      ],
    );
  }
}
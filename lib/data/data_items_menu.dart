import 'package:flutter/material.dart';
import 'package:flutter_design/model/ItemMenu/item_menu.dart';

const dataItemsMenu = <ItemMenu> [
  ItemMenu(title: 'Button', subtitle: 'Button implementation', url: '/buttons', icon: Icons.radio_button_checked),
  ItemMenu(title: 'Card', subtitle: 'Card implementation', url: '/cards', icon: Icons.rectangle_outlined),
  ItemMenu(title: 'Progress', subtitle: 'Progress implementation', url: '/progress', icon: Icons.hourglass_empty),
  ItemMenu(title: 'Snackbar and dialog', subtitle: 'Snackbar and dialog implementation', url: '/snackbar', icon: Icons.message),
  ItemMenu(title: 'Slide', subtitle: 'Slide implementation', url: '/slide', icon: Icons.web_stories),
  ItemMenu(title: 'Animated', subtitle: 'Animated implementation', url: '/animated', icon: Icons.animation),
  ItemMenu(title: 'Ui-controls', subtitle: 'Ui-controls implementation', url: '/ui-controls', icon: Icons.gamepad),
  ItemMenu(title: 'Scroll', subtitle: 'Scroll and pull implementation', url: '/scroll', icon: Icons.list_alt_rounded),
  ItemMenu(title: 'Counter', subtitle: 'Counter implementation', url: '/counter', icon: Icons.add_circle),
  ItemMenu(title: 'Theme', subtitle: 'Theme implementation', url: '/theme', icon: Icons.color_lens_outlined),
];
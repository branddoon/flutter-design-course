import 'package:flutter/material.dart';

class ItemMenu{

  final String title;

  final String subtitle;

  final String url;

  final IconData icon;

  const ItemMenu({
    required this.title, 
    required this.subtitle,
    required this.url,
    required this.icon
  });
}
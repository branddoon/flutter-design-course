import 'package:flutter/material.dart';
import 'package:flutter_design/config/router/router.dart';
import 'package:flutter_design/config/theme/app_theme.dart';
import 'package:flutter_design/presentation/providers/theme_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: MainApp(),
    ));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, ref) {

    //final isDarkmode =ref.watch(isDarkModeProvider);
    //final selectedColor = ref.watch(selectedColorProvider);

    final AppTheme appTheme = ref.watch(themeNotifierProvider);

    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: appTheme.getTheme()
    );
  }
}

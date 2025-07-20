import 'package:flutter/material.dart';
import 'package:flutter_design/presentation/providers/theme_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeScreen extends ConsumerWidget {

  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {

    final isDarkMode = ref.watch(themeNotifierProvider).isDarkMode;

    return Scaffold(
      appBar: AppBar(
        title: Text('Theme'),
        actions: [
          IconButton(
            onPressed: (){
              //ref.watch(isDarkModeProvider.notifier).update((state)=>!state);
              ref.read(themeNotifierProvider.notifier).toggleDarkMode();
            }, 
            icon: isDarkMode ? Icon(Icons.dark_mode_outlined) : Icon(Icons.light_mode_outlined)
          )
        ],
      ),
      body: ThemeChangerView(),
    );
  }
}

class ThemeChangerView extends ConsumerWidget{
  const ThemeChangerView({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {

    final List<Color> colors = ref.watch(colorListProvider);
    final int selectedColor = ref.watch(themeNotifierProvider).selectedColor;

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index){

        final color = colors[index];

        return RadioListTile(
          title: Text('Color', style: TextStyle(color: color)),
          subtitle: Text('${color.b}'),
          activeColor: color,
          value: index,
          groupValue: selectedColor,
          onChanged: (value){
            //ref.watch(selectedColorProvider.notifier).update((state)=>index);
            ref.read(themeNotifierProvider.notifier).changeColorIndex(index);
          }
        );
      },
    );
  }
}
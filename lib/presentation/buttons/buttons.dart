import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
      ),
      body: ButtonView()
    );
  }
}

class ButtonView extends StatelessWidget {
  const ButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        ElevatedButton(onPressed: (){}, child: Text('Elevated button')),
        ElevatedButton(onPressed: null, child: Text('Elevated button disabled')),
        ElevatedButton.icon(onPressed: (){}, label: Text('Filled icon'), icon: Icon(Icons.access_alarm)),
        FilledButton(onPressed: (){}, child: Text('Filled button')),
        FilledButton.icon(onPressed: (){}, icon: const Icon(Icons.accessibility_new), label: Text('Filled icon')),
        OutlinedButton(onPressed: (){}, child: Text('Outline')),
        OutlinedButton.icon(onPressed: (){}, label: Text('Outline button'), icon: Icon(Icons.terminal),),
        TextButton(onPressed: (){}, child: Text('Text button')),
        TextButton(onPressed: (){}, style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.amber)),child: Text('Text button with color')),
        TextButton.icon(onPressed: (){}, label: Text('Text button with icon'), icon: Icon(Icons.abc_outlined),),
        IconButton(onPressed: (){}, icon: Icon(Icons.access_time_filled)),
        IconButton(onPressed: (){},  icon: Icon(Icons.vaccines), style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.amber)),),
      ],
    );
  }
}
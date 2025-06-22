import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
      )
    );
  }
}

class ButtonView extends StatelessWidget {
  const ButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(onPressed: (){}, child: Text('Elevated button')),
      ],
    );
  }
}
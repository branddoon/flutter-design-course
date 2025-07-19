import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter screeen'),
      ),
      body: Center(
        child: Text('Valor: 10')
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        
      }, child: Icon(Icons.add),),
    );
  }
  }
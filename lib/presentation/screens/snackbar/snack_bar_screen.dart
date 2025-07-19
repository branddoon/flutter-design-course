import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({super.key});


  void showCustomSnackBar(BuildContext context){
    final snackBar = SnackBar(
      content: Text('This message will dissapear in seconds...'),
      action: SnackBarAction(label: 'Got it!', onPressed: (){
        
      },), 
      duration: Duration(seconds: 2),
    ); 
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog(BuildContext context){
    showDialog(
      context: context, 
      builder: (context)=>AlertDialog(
        title: Text('Flutter desing'),
        content: Text('This is just a alert dialog message, so please ignore this...'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: Text('Cancelar')),
          FilledButton(onPressed: ()=> context.pop(), child: Text('Aceptar'))
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbar and dialog'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FilledButton(onPressed: () => openDialog(context), child: Text('Info...')),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackBar(context),
        label: Text('Show custom snackbar'),
        icon: Icon(Icons.remove_red_eye_outlined,)),
    );
  }
}
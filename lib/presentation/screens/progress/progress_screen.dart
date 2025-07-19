import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress indicator'),
      ),
      body: ProgressView(),
    );
  }
}

class ProgressView extends StatelessWidget {
  const ProgressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child:
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text('Circular progress indicator'),
              SizedBox(
                height: 10,
              ),
              CircularProgressIndicator(strokeWidth: 2, backgroundColor: Colors.red,),
              SizedBox(
                height: 10,
              ),
              
              ControlledProgressIndicator()
            ],
          ),
      ),
    );
  }
}

class ControlledProgressIndicator extends StatelessWidget {
  const ControlledProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(Duration(milliseconds: 300), (value){
        return value * 0.1;
      }).takeWhile((value) => value <= 1), 
      builder: (context, snapshot){
        final progressValue = snapshot.data ?? 0;
        return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Circular progress with stream'),
              SizedBox(
                height: 10,
              ),
              CircularProgressIndicator( value: progressValue, strokeWidth: 4, backgroundColor: Colors.amber,),
              SizedBox(
                height: 10,
              ),
              Text('Linear progress indicator'),
              SizedBox(
                height: 10,
              ),
              LinearProgressIndicator( value: progressValue,)
            ],
          );
      });
  }
}
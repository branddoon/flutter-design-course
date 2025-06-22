import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: CardView(),
    );
  }
}

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.grey,
        child: SizedBox(
          width: 350,
          height: 450,
          child: Padding(
              padding: EdgeInsetsGeometry.all(10.0),
              child: Column(
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 120,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://www.grupoendor.com/wp-content/uploads/2024/07/default-avatar-icon-of-social-media-user-vector.jpg"), //NetworkImage
                        radius: 100,
                      ), //CircleAvatar
                  ),
                  Align(child: Text('User', style: TextStyle(color: Colors.white, fontSize: 30),),),
                  Align(child: Text('Email', style: TextStyle(color: Colors.white, fontSize: 20),),)
                ],
              ),
            ),
        ),
      ),
    );
  }
}
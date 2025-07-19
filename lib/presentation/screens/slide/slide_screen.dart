import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;
  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo> [
  SlideInfo('Slide 1', 'Slide description 1', 'assets/images/1.jpg'),
    SlideInfo('Slide 2', 'Slide description 2', 'assets/images/2.jpg'),
      SlideInfo('Slide 3', 'Slide description 3', 'assets/images/3.jpg'),
];

class SlideScreen extends StatelessWidget {

  const SlideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            physics: BouncingScrollPhysics(),
            children: slides.map(
              (slideData) => Slide(title: slideData.title, caption: slideData.caption, imageUrl: slideData.imageUrl)
              ).toList(),
          ),
          Positioned(right:20, top:50, child:TextButton(onPressed: ()=> context.pop(), child: Text('Salir')))
        ],
      ),
    );
  }
}

class Slide extends StatelessWidget {

  final String title;
  final String caption;
  final String imageUrl;

  const Slide({super.key, required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {

    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            SizedBox(height: 10,),
            Text(title, style: titleStyle),
            SizedBox(height: 10,),
            Text(caption, style: captionStyle,)
          ],
        ),
      ),
    );
  }
}
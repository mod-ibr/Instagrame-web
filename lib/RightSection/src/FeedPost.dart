import 'package:flutter/material.dart';

List<String> images = [
  'assets/0.jpeg',
  'assets/1.jpeg',
  'assets/2.jpeg',
  'assets/3.jpeg',
  'assets/4.jpeg',
  'assets/5.jpeg',
  'assets/6.jpeg',
  'assets/7.jpeg',
  'assets/8.jpeg',
  'assets/1.jpeg',
];

class FeedPost extends StatelessWidget {
  final int index;
  FeedPost(this.index);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(images[index]),
          ),
        ),
      ),
    );
  }
}

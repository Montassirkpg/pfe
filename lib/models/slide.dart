import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: 'images/image11.jpg',
    title: 'A Cool Way to Get Start',
    description: 'The key is not the will to win… everybody has that. It is the will to prepare to win that is important.',
  ),
  Slide(
    imageUrl: 'images/image22.jpg',
    title: 'What\'s on this app',
    description: 'Just get in and u will get some good news about games',
  ),
  Slide(
    imageUrl: 'images/image33.jpg',
    title: 'It\'s Just the Beginning',
    description: 'If you don\'T have an account yet,what are you waiting for...',
  ),
];
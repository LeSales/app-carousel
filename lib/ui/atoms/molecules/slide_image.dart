import 'package:flutter/material.dart';

class SlideImage extends StatelessWidget {
  SlideImage({required this.urls, required this.index});

  final List<String> urls;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      urls[index],
      fit: BoxFit.cover,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width,
    );
  }
}

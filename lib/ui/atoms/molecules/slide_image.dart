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
      loadingBuilder: (_, child, progress) {
        return progress == null
            ? child
            : Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width,
                color: Colors.grey[300],
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
      },
    );
  }
}

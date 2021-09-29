import 'package:carousel/ui/atoms/button_custom.dart';
import 'package:carousel/ui/atoms/molecules/slide_image.dart';
import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  CardCustom({
    required this.urls,
    required this.index,
    required this.prevImage,
    required this.nextImage,
  });

  final List<String> urls;
  final int index;
  final Function() prevImage;
  final Function() nextImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SlideImage(urls: urls, index: index),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.46,
                child: ButtonCustom(
                  label: "Prev",
                  onPress: prevImage,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.46,
                child: ButtonCustom(
                  label: "Prev",
                  onPress: prevImage,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

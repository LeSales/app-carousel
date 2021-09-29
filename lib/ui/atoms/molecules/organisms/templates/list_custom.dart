import 'package:carousel/ui/atoms/molecules/organisms/card_custom.dart';
import 'package:carousel/ui/atoms/title_custom.dart';
import 'package:flutter/material.dart';

class ListCustom extends StatelessWidget {
  const ListCustom({
    required this.list,
    required this.prevImage,
    required this.nextImage,
    required this.index,
  });

  final List<String> list;
  final int index;
  final void Function() prevImage;
  final void Function() nextImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleCustom(text: 'SLIDER CUSTOMIZADO'),
        CardCustom(
          urls: list,
          index: index,
          nextImage: nextImage,
          prevImage: prevImage,
        ),
      ],
    );
  }
}

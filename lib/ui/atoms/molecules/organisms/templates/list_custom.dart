import 'package:carousel/ui/atoms/button_custom.dart';
import 'package:carousel/ui/atoms/molecules/organisms/card_custom.dart';
import 'package:carousel/ui/atoms/title_custom.dart';
import 'package:flutter/material.dart';

class ListCustom extends StatelessWidget {
  const ListCustom({
    required this.list,
    required this.prevImage,
    required this.nextImage,
    required this.index,
    required this.changeTitle,
    required this.titleController,
    required this.inputController,
  });

  final List<String> list;
  final int index;
  final void Function() prevImage;
  final void Function() nextImage;
  final void Function() changeTitle;
  final ValueNotifier<String> titleController;
  final TextEditingController inputController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ValueListenableBuilder<String>(
              valueListenable: titleController,
              builder: (_, value, __) {
                return TitleCustom(text: '$value');
              }),
          CardCustom(
            urls: list,
            index: index,
            nextImage: nextImage,
            prevImage: prevImage,
          ),
          SizedBox(height: 12),
          TextField(
            controller: inputController,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(2.0)),
            ),
          ),
          SizedBox(height: 12),
          ButtonCustom(label: "Atualizar título", onPress: changeTitle)
        ],
      ),
    );
  }
}

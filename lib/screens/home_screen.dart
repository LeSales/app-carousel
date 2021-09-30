import 'package:carousel/screens/home/home_controller.dart';
import 'package:carousel/ui/atoms/molecules/organisms/templates/list_custom.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ValueListenableBuilder<int>(
          valueListenable: homeController.index,
          builder: (_, value, __) {
            return ListCustom(
              list: homeController.list,
              prevImage: homeController.prevImage,
              nextImage: homeController.nextImage,
              index: homeController.index.value,
            );
          },
        ),
      ),
    );
  }
}

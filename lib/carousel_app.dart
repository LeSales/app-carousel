import 'package:carousel/screens/home_screen.dart';
import 'package:flutter/material.dart';

class CarouselApp extends StatelessWidget {
  const CarouselApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: HomeScreen(),
    );
  }
}

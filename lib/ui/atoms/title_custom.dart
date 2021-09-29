import 'package:flutter/material.dart';

class TitleCustom extends StatelessWidget {
  const TitleCustom({required this.text, this.color, this.size});

  final String text;
  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size ?? 24,
        color: color ?? Colors.grey[900],
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

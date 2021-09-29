import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  ButtonCustom({required this.label, required this.onPress, this.color});

  final String label;
  final void Function() onPress;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 46,
      color: color ?? Colors.blue,
      child: TextButton(
        onPressed: onPress,
        child: Text(
          label,
          style: TextStyle(color: Colors.grey[900]),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SimpleIcon extends StatelessWidget {
  final Icon icon;
  final Color iconColor;
  final double size;

  const SimpleIcon({
    required this.icon,
    this.iconColor = Colors.orange,
    this.size = 18.0,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon.icon,
      color: iconColor, // Use the iconColor from the parameter
      size: size, // Use the size from the parameter
    );
  }
}

import 'package:flutter/material.dart';

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 40); // Start from bottom-left corner
    path.quadraticBezierTo(size.width / 4, size.height, size.width / 2,
        size.height - 40); // Curve up
    path.quadraticBezierTo(3 * size.width / 4, size.height - 80, size.width,
        size.height - 40); // Curve down
    path.lineTo(size.width, 0); // Top-right corner
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
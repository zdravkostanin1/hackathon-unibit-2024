import 'package:flutter/material.dart';

class CircularIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const CircularIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(50), // For ripple effect
      child: Container(
        width: 50, // Width of the circle
        height: 50, // Height of the circle
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(
            color: Colors.grey.shade300, // Light grey border
            width: 2, // Border width
          ),
        ),
        child: Center(
          child: Icon(
            icon,
            color: Colors.black, // Icon color
            size: 25, // Icon size
          ),
        ),
      ),
    );
  }
}
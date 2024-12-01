import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String name;
  final String imageUrl;

  const ProfileWidget({
    super.key,
    required this.name,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   borderRadius: BorderRadius.circular(32),
      //   boxShadow: [
      //     BoxShadow(
      //       color: Colors.black.withOpacity(0.1),
      //       blurRadius: 8,
      //       offset: Offset(0, 4),
      //     ),
      //   ],
      // ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        children: [
          // Circular image
          CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(imageUrl),
          ),
          const SizedBox(width: 12),
          // Name text
          Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
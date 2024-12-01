import 'package:flutter/material.dart';

class RoundedContainerWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const RoundedContainerWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: SizedBox(
        width: 500,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.network(
                imageUrl,
                width: 100.0,
                height: 100.0,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 20.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
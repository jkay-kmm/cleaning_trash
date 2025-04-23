import 'package:flutter/material.dart';

class TrashItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String point;

  const TrashItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.point,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Expanded(child: Image.asset(imagePath)),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(subtitle, style: const TextStyle(fontSize: 12, color: Colors.black54)),
          const SizedBox(height: 4),
          Text(point, style: const TextStyle(color: Color(0xFF4CAF50))),
        ],
      ),
    );
  }
}

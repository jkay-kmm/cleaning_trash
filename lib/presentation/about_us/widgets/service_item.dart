import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class ServiceItem extends StatelessWidget {
  final String title;
  final String imagePath;
  final Color? backgroundColor;

  const ServiceItem(this.title, this.imagePath, {super.key, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFE6F6EF),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Image.asset(imagePath, width: 58, height: 55),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/configs/theme/app_fonts.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  const InfoCard({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset(imageUrl, height: 20, width: 20),
            const SizedBox(height: 5, width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppFont.semi_black_12),
                Text(subtitle, style: AppFont.semi_default_12),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

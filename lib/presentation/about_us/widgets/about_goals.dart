import 'package:flutter/material.dart';
import '../../../core/configs/assets/app_images.dart';

import 'package:flutter/material.dart';
import '../../../core/configs/assets/app_images.dart';

class AboutGoals extends StatelessWidget {
  const AboutGoals({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( vertical: 8),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            const Center(
              child: Text(
                'Mục tiêu phát triển bền vững',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(AppImages.about3, width: 60),
                Image.asset(AppImages.about2, width: 60),
                Image.asset(AppImages.about1, width: 60),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


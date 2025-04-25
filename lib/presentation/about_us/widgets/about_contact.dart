import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../../../core/configs/theme/app_colors.dart';

class AboutContact extends StatelessWidget {
  const AboutContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: AppColors.tertiaryGreen,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 8),
            Text(
              'Liên hệ: bấm để liên hệ với đội ngũ và khiếu nại các vấn đề, vui lòng liên hệ.',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.public, color: Colors.white, size: 20),
                SizedBox(width: 12,),
                Icon(LucideIcons.phoneCall, color: Colors.white, size: 20),
                SizedBox(width: 12,),
                Icon(Icons.email, color: Colors.white, size: 20),
                SizedBox(width: 12,),
              ],
            )
          ],
        ),
      ),
    );
  }
}

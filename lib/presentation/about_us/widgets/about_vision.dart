import 'package:flutter/material.dart';
import '../../../core/configs/theme/app_colors.dart';

class AboutVision extends StatelessWidget {
  const AboutVision({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( vertical: 12),
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
            Center(
              child: Text(
                'DaurUang',
                style: TextStyle(
                  color: AppColors.primaryGreen,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Tối ưu hóa chất lượng vệ sinh môi trường và hệ thống quản lý chất thải phi hữu cơ tích hợp trên khắp Hà Nội.',
            ),
          ],
        ),
      ),
    );
  }
}


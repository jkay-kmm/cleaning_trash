import 'package:cleaning_trash/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../core/configs/assets/app_images.dart';
import '../../core/configs/theme/app_fonts.dart';

class CategoryIntro extends StatelessWidget {
  const CategoryIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.green,
                ),
                child: IconButton(
                  icon: const Icon(LucideIcons.chevronLeft),
                  onPressed: () => context.go('/home'),
                  iconSize: 20,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'Danh mục rác',
                style: AppFont.semi_default_30,
              ),
              const SizedBox(height: 12),
              Text(
                'Bạn có thể kiểm tra một số danh sách và các loại chất thải có thể được gửi trong danh mục này',
                style: AppFont.regular_default_14,
              ),
              const SizedBox(height: 24),
              Expanded(
                child: Center(
                  child: Image.asset(AppImages.introHome),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.tertiaryGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      // side: const BorderSide(color: Colors.white),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  onPressed: () {
                    context.go('/category_home');
                  },
                  child: Text('Bắt đầu', style: AppFont.semi_default_14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

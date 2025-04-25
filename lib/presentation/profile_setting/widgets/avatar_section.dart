import 'dart:io';

import 'package:cleaning_trash/core/configs/assets/app_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/configs/theme/app_colors.dart';

class AvatarSection extends StatelessWidget {
  final File? imageFile;
  final VoidCallback onTap;

  const AvatarSection({required this.imageFile, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: imageFile != null
                ? FileImage(imageFile!)
                : AssetImage(AppImages.sat) as ImageProvider,
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: onTap,
            child: Text(
              'Thay đổi ảnh đại diện',
              style: TextStyle(
                color: AppColors.primaryGreen,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

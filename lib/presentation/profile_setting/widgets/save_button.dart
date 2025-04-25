import 'dart:ui';

import 'package:cleaning_trash/core/configs/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SaveButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          side: BorderSide(color: AppColors.primaryGreen), // màu viền
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16), // bo góc nếu cần
          ),
          foregroundColor: AppColors.primaryGreen, // màu chữ
        ),
        child: Text('Lưu thông tin'),
            ),
      ),

    );
  }
}

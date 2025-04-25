import 'package:flutter/material.dart';
import '../../../core/configs/theme/app_fonts.dart';
import '../../../core/configs/theme/app_colors.dart';

import 'package:flutter/material.dart';
import '../../../core/configs/theme/app_fonts.dart';
import '../../../core/configs/theme/app_colors.dart';

class AboutHeader extends StatelessWidget {
  const AboutHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.primaryGreen,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Text(
          'DaurUang là một công ty đổi mới kỹ thuật số được thành lập với mục đích hiện thực hóa những nỗ lực tối ưu hóa trong hoạt động quản lý chất thải',
          style: AppFont.semiWhite.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}


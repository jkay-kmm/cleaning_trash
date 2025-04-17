import 'package:cleaning_trash/core/configs/assets/app_images.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/configs/theme/app_fonts.dart';


class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 2), () {
        if (context.mounted) {
          context.go('/welcome');
        }
      });
    });

    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(child: _buildBodyPage(context)),
    );
  }

  Widget _buildBodyPage(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 120,),
          _buildIconSplash(),
          _buildTextSplash(),
          Spacer(),
          _buildTitleSplash(),
        ],
      ),
    );
  }

  Widget _buildIconSplash() {
    return Image.asset(
      AppImages.logo,
      width: 100,
      height: 100,
      fit: BoxFit.contain,
    );
  }

  Widget _buildTextSplash() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Text(
        'Phân loại rác',
        style: AppFont.semi_default_24,
      ),
    );
  }

  Widget _buildTitleSplash() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Text(
            "Đoàn kết quyết tâm\nvà các bước tạo nên một trái đất không rác thải",
            style: AppFont.regular_default_12,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

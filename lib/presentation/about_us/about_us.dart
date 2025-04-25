import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'widgets/about_header.dart';
import 'widgets/about_vision.dart';
import 'widgets/about_goals.dart';
import 'widgets/about_services.dart';
import 'widgets/about_contact.dart';
import '../../core/configs/theme/app_colors.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Về chúng tôi'),
        centerTitle: true,
        backgroundColor: AppColors.primaryGreen,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            context.go('/profile');
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 12),
            AboutHeader(),
            AboutVision(),
            AboutGoals(),
            AboutServices(),
            AboutContact(),
          ],
        ),
      ),
    );
  }
}

import 'package:cleaning_trash/presentation/profile/widgets/info_card.dart';
import 'package:cleaning_trash/presentation/profile/widgets/logout_dialog.dart';
import 'package:cleaning_trash/presentation/profile/widgets/setting_item.dart';
import 'package:cleaning_trash/presentation/profile/widgets/user_profile_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/configs/assets/app_images.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              // Background container
              Container(
                height: 150,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF038E4C), Color(0xFF81C784)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),

              // Main content
              Column(
                children: [
                  const SizedBox(height: 30),
                  const UserProfileHeader(
                    name: 'Trung Nguyen',
                    phoneNumber: '0899-3415-875',
                    avatarUrl: 'assets/images/lo.png',
                  ),
                  const SizedBox(height: 100),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, bottom: 10),
                          child: Text("Cài đặt ứng dụng"),
                        ),
                        SettingItem(
                          title: "Cài đặt hồ sơ",
                          onTap: () {
                            context.go('/profile_setting');
                          },
                        ),
                        SettingItem(
                          title: "Cài đặt bảo mật",
                          onTap: () {
                            context.go('/security_setting');
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 10, bottom: 10),
                          child: Text("Thông tin chung"),
                        ),
                        SettingItem(
                          title: "Về chúng tôi",
                          onTap: () {
                            context.go('/about_us');
                          },
                        ),
                        SettingItem(
                          title: "Điều khoản & điều kiện",
                          onTap: () {
                            context.go('/condition');
                          },
                        ),
                        SettingItem(
                          title: "Chính sách bảo mật",
                          onTap: () {
                            context.go('/privacy_policy');
                          },
                        ),
                        const SizedBox(height: 60),
                        Center(
                          child: const Text(
                            "Version 0.0.1",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          child: OutlinedButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return const LogoutDialog();
                                },
                              );
                            },
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Colors.green),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 12),
                              child: Center(
                                child: Text(
                                  "Đăng xuất",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),

              // Floating cards
              Positioned(
                top: 120,
                left: 20,
                right: 20,
                child: Row(
                  children: [
                    InfoCard(
                      title: "Thành phố",
                      subtitle: "Bảng xếp hạng",
                      imageUrl: AppImages.star,
                    ),
                    const SizedBox(width: 10),
                    InfoCard(
                      title: "16500",
                      subtitle: "Điểm thưởng",
                      imageUrl: AppImages.icon_point,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

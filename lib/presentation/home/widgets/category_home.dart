import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

class CategoryHome extends StatelessWidget {
  const CategoryHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey.shade300,
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildFeatureIcon(
              icon: LucideIcons.list,
              label: "Danh mục",
              onTap: () => context.go('/category_splash'),
            ),
            buildFeatureIcon(
              icon: LucideIcons.shoppingBag,
              label: "Mua sắm",
              onTap: () => Navigator.pushNamed(context, '/shop'),
            ),
            buildFeatureIcon(
              icon: LucideIcons.mapPin,
              label: "Điểm thả",
              onTap: () => Navigator.pushNamed(context, '/drop_point'),
            ),
            buildFeatureIcon(
              icon: LucideIcons.truck,
              label: "Pick Up",
              onTap: () => Navigator.pushNamed(context, '/pickup'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFeatureIcon({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(icon, size: 28, color: Color(0xFF4CAF50)),
          const SizedBox(height: 4),
          Text(label, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}

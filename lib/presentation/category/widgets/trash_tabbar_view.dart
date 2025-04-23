import 'package:cleaning_trash/presentation/category/widgets/trash_item.dart';
import 'package:flutter/material.dart';

import '../../../core/configs/assets/app_images.dart';


class TrashTabBarView extends StatelessWidget {
  final TabController tabController;

  const TrashTabBarView({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: tabController,
      children: [
        // Tất cả
        GridView.count(
          padding: const EdgeInsets.all(16),
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.75,
          children: const [
            TrashItem(
              imagePath: AppImages.coc,
              title: 'Nhôm',
              subtitle: 'Kim loại không hữu cơ',
              point: '6700 Point / Kg',
            ),
            TrashItem(
              imagePath: AppImages.sat,
              title: 'Sắt rắn',
              subtitle: 'Kim loại không hữu cơ',
              point: '2000 Point / Kg',
            ),
            TrashItem(
              imagePath: AppImages.lo1,
              title: 'Chai nguyên tử',
              subtitle: 'Nhựa phi hữu cơ',
              point: '2000 Point / Kg',
            ),
            TrashItem(
              imagePath: AppImages.lo,
              title: 'Chai thủy tinh',
              subtitle: 'Thủy tinh phi hữu cơ',
              point: '1500 Point / Kg',
            ),

          ],
        ),
        GridView.count(
          padding: const EdgeInsets.all(16),
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.75,
          children: const [
            TrashItem(
              imagePath: 'assets/images/aluminum.png',
              title: 'Nhôm',
              subtitle: 'Kim loại không hữu cơ',
              point: '6700 Point / Kg',
            ),
          ],
        ),
        const Center(child: Text('Điện tử')),
        const Center(child: Text('Thủy tinh')),
        const Center(child: Text('Giấy')),

      ],
    );
  }
}

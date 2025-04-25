import 'package:flutter/material.dart';
import '../../../core/configs/theme/app_colors.dart';
import 'service_item.dart';

import 'package:flutter/material.dart';
import 'service_item.dart';

class AboutServices extends StatelessWidget {
  const AboutServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 24),
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
            const Center(
              child: Text(
                'Dịch vụ thu gom rác miễn phí',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            const SizedBox(height: 12),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              physics: NeverScrollableScrollPhysics(),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: const [
                ServiceItem('Dịch vụ thu gom miễn phí', 'assets/images/car.png', backgroundColor: AppColors.red),
                ServiceItem('Bán hơn 20 loại rác', 'assets/images/bin.png', backgroundColor: AppColors.primaryGreen),
                ServiceItem('Giá rác cao hơn', 'assets/images/bag.png', backgroundColor: AppColors.primaryGreen),
                ServiceItem('Vị trí chính xác', 'assets/images/location 1.png', backgroundColor: AppColors.primaryGreen),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


import 'package:cleaning_trash/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Condition extends StatelessWidget {
  const Condition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // SliverAppBar cho phép ẩn hiện appBar khi cuộn
          SliverAppBar(
            title: Text('Điều khoản sử dụng'),
            backgroundColor: AppColors.primaryGreen,
            floating: true, // Cho phép appBar hiện ra khi cuộn lên
            pinned: true,   // Giữ appBar cố định khi cuộn xuống
            snap: true,     // Cho phép appBar hiện ngay khi cuộn lên
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                context.go('/profile');
              },
            ),
          ),
          // SliverList chứa nội dung của điều khoản
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '1. Giới thiệu\n\n'
                            'Chào mừng bạn đến với ứng dụng của chúng tôi. Bằng việc sử dụng ứng dụng này, bạn đồng ý tuân thủ các điều khoản sử dụng dưới đây.',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 16),
                      Text(
                        '2. Quyền và nghĩa vụ của người dùng\n\n'
                            'Người dùng có quyền truy cập vào các tính năng của ứng dụng theo các điều khoản sử dụng của chúng tôi. Người dùng cam kết không sử dụng ứng dụng cho các mục đích trái phép.',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 16),
                      Text(
                        '3. Quyền sở hữu trí tuệ\n\n'
                            'Tất cả các nội dung trong ứng dụng, bao gồm nhưng không giới hạn ở văn bản, hình ảnh, logo và đồ họa, đều thuộc quyền sở hữu của công ty chúng tôi.',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 16),
                      Text(
                        '4. Thay đổi điều khoản\n\n'
                            'Chúng tôi có quyền thay đổi các điều khoản sử dụng này mà không cần thông báo trước. Mọi thay đổi sẽ được cập nhật trên trang này.',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 16),
                      Text(
                        '5. Liên hệ\n\n'
                            'Nếu bạn có bất kỳ câu hỏi nào về điều khoản sử dụng này, vui lòng liên hệ với chúng tôi qua email: nguyenthanhtrungtt20@gmail.com',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

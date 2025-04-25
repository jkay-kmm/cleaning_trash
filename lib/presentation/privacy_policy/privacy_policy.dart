import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/configs/theme/app_colors.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chính sách bảo mật',),
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '1. Thu thập thông tin cá nhân\n\n'
                  'Chúng tôi thu thập thông tin cá nhân của bạn khi bạn đăng ký và sử dụng dịch vụ của chúng tôi. Những thông tin này bao gồm tên, địa chỉ email, số điện thoại và các thông tin khác mà bạn cung cấp.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              '2. Cách chúng tôi sử dụng thông tin\n\n'
                  'Thông tin cá nhân của bạn sẽ được sử dụng để cung cấp các dịch vụ, cải thiện trải nghiệm người dùng, và gửi các thông báo quan trọng liên quan đến tài khoản của bạn.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              '3. Bảo mật thông tin\n\n'
                  'Chúng tôi cam kết bảo mật thông tin cá nhân của bạn bằng cách sử dụng các biện pháp bảo mật thích hợp. Tuy nhiên, không có phương thức truyền tải dữ liệu qua Internet hoặc lưu trữ điện tử nào là hoàn toàn an toàn.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              '4. Chia sẻ thông tin cá nhân\n\n'
                  'Chúng tôi không chia sẻ thông tin cá nhân của bạn với bên thứ ba mà không có sự đồng ý của bạn, ngoại trừ khi yêu cầu bởi pháp luật hoặc để bảo vệ quyền lợi của chúng tôi.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              '5. Quyền lợi của bạn\n\n'
                  'Bạn có quyền yêu cầu xem, chỉnh sửa, hoặc xóa thông tin cá nhân của mình. Để thực hiện điều này, vui lòng liên hệ với chúng tôi qua email: support@company.com',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

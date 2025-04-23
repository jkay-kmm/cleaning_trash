import 'package:cleaning_trash/presentation/register/widgets/auth_background.dart';
import 'package:cleaning_trash/presentation/register/widgets/auth_title.dart';
import 'package:cleaning_trash/presentation/register/widgets/register_form.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: const [
              AuthBackground(),
              RegisterForm(),
              AuthTitle(title: "Đăng ký", subtitle: "để tạo tài khoản mới!"),
            ],
          ),
        ),
      ),
    );
  }
}

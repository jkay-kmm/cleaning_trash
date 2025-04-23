// login_screen.dart
import 'package:cleaning_trash/presentation/login/widgets/login_form.dart';
import 'package:cleaning_trash/presentation/login/widgets/login_header.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: const BoxDecoration(
                  color: Color(0xFF22C55E),
                ),
              ),
              const LoginForm(),
              const LoginHeader(),
            ],
          ),
        ),
      ),
    );
  }
}

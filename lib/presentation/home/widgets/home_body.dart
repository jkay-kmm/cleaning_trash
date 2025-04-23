import 'package:cleaning_trash/presentation/home/widgets/blog_list.dart';
import 'package:cleaning_trash/presentation/home/widgets/home_card.dart';
import 'package:flutter/material.dart';
import 'category_home.dart';
import 'process_point.dart';


class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                _buildHeader(context),
                _buildScoreCard(),
              ],
            ),
            const SizedBox(height: 140),
            const CategoryHome(),
            const SizedBox(height: 16),
            const ProcessPoint(),
            const SizedBox(height: 16),
            BlogList(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF038E4C), Color(0xFF81C784)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 16),
              Text("Chào mừng", style: TextStyle(color: Colors.white70)),
              Text(
                "Trung Nguyen",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 60),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildScoreCard() {
    return Positioned(
      bottom: -120,
      left: 16,
      right: 16,
      child: Material(
        elevation: 8,
        borderRadius: BorderRadius.circular(16),
        child: const HomeCard(),
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'blog_card.dart';

class BlogList extends StatelessWidget {
  final List<Map<String, String>> blogList = [
    {
      "imageUrl": "assets/images/blog2.png",
      "title": "Hướng dẫn phân loại rác đúng cách",
      "date": "08/04/2025"
    },
    {
      "imageUrl": "assets/images/blog 1.png",
      "title": "Tái chế nhựa: Tại sao lại quan trọng?",
      "date": "06/04/2025"
    },
  ];

 BlogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: blogList.length,
      itemBuilder: (context, index) {
        final blog = blogList[index];
        return BlogCard(
          imageUrl: blog['imageUrl']!,
          title: blog['title']!,
          date: blog['date']!,
        );
      },
    );
  }
}

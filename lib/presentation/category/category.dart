import 'package:flutter/material.dart';
import 'widgets/trash_header.dart';
import 'widgets/trash_tabbar.dart';
import 'widgets/trash_tabbar_view.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final filters = ['Tất cả', 'Điện tử', 'Thủy tinh', 'Giấy', 'Kim loại'];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: filters.length, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWithSearchBar(),
            const SizedBox(height: 16),
            TrashTabBar(filters: filters, tabController: _tabController),
            const SizedBox(height: 16),
            Expanded(
              child: TrashTabBarView(tabController: _tabController),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TrashTabBar extends StatelessWidget {
  final List<String> filters;
  final TabController tabController;

  const TrashTabBar({
    super.key,
    required this.filters,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: TabBar(
        dividerColor: Colors.transparent,
        controller: tabController,
        labelPadding: EdgeInsets.symmetric(horizontal: 4),
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        indicator: BoxDecoration(
          color: const Color(0xFF4CAF50),
          borderRadius: BorderRadius.circular(20),
        ),
        labelColor: Colors.white,
        unselectedLabelColor: const Color(0xFF4CAF50),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
        labelStyle: const TextStyle(fontWeight: FontWeight.bold),
        tabs:
            filters.map((filter) {
              return Tab(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFF4CAF50)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(filter),
                ),
              );
            }).toList(),
      ),
    );
  }
}

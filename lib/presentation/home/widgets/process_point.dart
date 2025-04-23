import 'package:flutter/material.dart';

class ProcessPoint extends StatelessWidget {
  const ProcessPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xFF4CAF50).withAlpha((0.05 * 255).round()),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: const [
            Icon(Icons.recycling, color: Color(0xFF4CAF50)),
            SizedBox(width: 12),
            Expanded(
              child: Text(
                "Quy trình tích điểm và phân loại rác đang được cải tiến.",
                style: TextStyle(fontSize: 13),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

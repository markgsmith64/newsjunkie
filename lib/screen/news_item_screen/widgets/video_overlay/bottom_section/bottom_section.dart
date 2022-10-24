import 'package:flutter/material.dart';
import 'package:newsjunkie/screen/news_item_screen/widgets/video_overlay/bottom_section/horizontal_bar_chart/horizontal_bar_chart.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 100, child: HorizontalBarChart());
  }
}
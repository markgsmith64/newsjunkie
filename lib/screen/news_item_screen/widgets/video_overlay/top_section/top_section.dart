import 'package:flutter/material.dart';
import 'package:newsjunkie/screen/news_item_screen/widgets/video_overlay/top_section/top_left_section/top_left_section.dart';
import 'package:newsjunkie/screen/news_item_screen/widgets/video_overlay/top_section/top_right_section/top_right_section.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: const [
          TopLeftSection(),
          TopRightSection(),
        ],
      ),
    );
  }
}

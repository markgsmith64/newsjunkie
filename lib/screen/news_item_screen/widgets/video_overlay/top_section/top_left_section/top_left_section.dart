import 'package:flutter/material.dart';
import 'package:newsjunkie/screen/news_item_screen/widgets/video_overlay/top_section/top_left_section/journalist_profile_tile/journalist_profile_tile.dart';
import 'package:newsjunkie/screen/news_item_screen/widgets/video_overlay/top_section/top_left_section/news_item_summary_tile/news_item_summary_tile.dart';

class TopLeftSection extends StatelessWidget {
  const TopLeftSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: Container(),
          ),
          const JournalistProfileTile(),
          const SizedBox(
            height: 6,
          ),
          const NewItemSummaryTile(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:newsjunkie/screen/news_item_screen/widgets/video_overlay/bottom_section/bottom_section.dart';
import 'package:newsjunkie/screen/news_item_screen/widgets/video_overlay/middle_section/middle_section.dart';
import 'package:newsjunkie/screen/news_item_screen/widgets/video_overlay/top_section/top_section.dart';

class VideoOverlay extends StatelessWidget {
  const VideoOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          TopSection(),
          MiddleSection(),
          BottomSection(),
        ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsjunkie/bloc/news_item_bloc/news_item_bloc.dart';
import 'package:newsjunkie/model/news_item/news_item.dart';
import 'package:newsjunkie/screen/news_item_screen/widgets/video_overlay/video_overlay.dart';
import 'package:newsjunkie/screen/news_item_screen/widgets/video_player/video_player.dart';
import 'package:newsjunkie/screen/news_item_screen/widgets/marquee_panel/marquee_panel.dart';

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class NewsItemScreen extends StatefulWidget {
  static const routeName = "newsItemScreen";
  const NewsItemScreen({super.key});

  @override
  State<NewsItemScreen> createState() => _NewsItemScreenState();
}

class _NewsItemScreenState extends State<NewsItemScreen> {
  @override
  void initState() {
    BlocProvider.of<NewsItemBloc>(context).add(GetNewsItem(0));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body: Column(
          children: const [
            MarqueePanel(),
            Flexible(
              child: Center(
                child: NewsItemWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewsItemWidget extends StatelessWidget {
  const NewsItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<NewsItemBloc, NewsItemState>(
        builder: (context, state) {
          if (state is NewsItemInitial || state is NewsItemLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is NewsItemLoaded) {
            return Stack(
              children: const [
                VideoPlayerWidget(),
                VideoOverlay(),
              ],
            );
          } else {
            return Center(child: const Text("Error retrieving news item!"));
          }
        },
      ),
    );
  }
}

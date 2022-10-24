part of 'news_item_bloc.dart';

@immutable
abstract class NewsItemEvent extends Equatable {

  @override
  List<Object> get props => [];
}

class GetNewsItem extends NewsItemEvent {
  final int newsItemId;

  GetNewsItem(this.newsItemId);

  @override
  List<Object> get props => [newsItemId];
}

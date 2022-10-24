part of 'news_item_bloc.dart';

@immutable
abstract class NewsItemState {}

class NewsItemInitial extends NewsItemState {}

class NewsItemLoaded extends NewsItemState {
  final NewsItem newsItem;

  NewsItemLoaded.from(NewsItemLoaded state)
      : newsItem = state.newsItem;

  NewsItemLoaded(this.newsItem);
}

class NewsItemLoading extends NewsItemState {
}

class NewsItemLoadingFailed extends NewsItemState {
}


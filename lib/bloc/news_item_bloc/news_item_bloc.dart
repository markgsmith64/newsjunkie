import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:newsjunkie/model/news_item/news_item.dart';
import 'package:newsjunkie/service/api/api_service.dart';

part 'news_item_event.dart';
part 'news_item_state.dart';

class NewsItemBloc extends Bloc<NewsItemEvent, NewsItemState> {
  final APIService apiService;

  NewsItemBloc(this.apiService) : super(NewsItemInitial()) {
    on<GetNewsItem>((event, emit) async {
      try {
        emit(NewsItemLoading());
        NewsItem newsItem = await apiService.getNewsItem(0);

        emit(NewsItemLoaded(newsItem));
      } on APIError {
        emit(NewsItemLoadingFailed());
      }
    });
  }
}

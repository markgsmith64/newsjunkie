import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:newsjunkie/constants.dart';
import 'package:newsjunkie/model/news_item/news_item.dart';

part 'exceptions.dart';

enum RequestMethod { GET, POST, PUT, PATCH, DELETE }

class _JSONFetcher {
  final String endpoint;
  final RequestMethod method;
  final Dio httpClient;
  final dynamic data;

  _JSONFetcher(
      {required this.httpClient,
      required this.endpoint,
      required this.method,
      this.data = const <String, dynamic>{}});

  Function? _getMethodCall() {
    final Map<RequestMethod, Function> _methodMap = {
      RequestMethod.GET: httpClient.get,
      RequestMethod.POST: httpClient.post,
      RequestMethod.PUT: httpClient.put,
      RequestMethod.PATCH: httpClient.patch,
      RequestMethod.DELETE: httpClient.delete
    };
    return _methodMap[this.method];
  }

  Future<dynamic> getJSON() async {
    var apiResponse;
    try {
      Function? requestFunction = _getMethodCall();
      if (method == RequestMethod.GET)
        apiResponse = await requestFunction!(endpoint, queryParameters: data);
      else
        apiResponse = await requestFunction!(endpoint, data: data);
    } on DioError catch (e) {
      // if (e.response!.statusCode == 401 || e.response!.statusCode == 403)
      //   throw AuthenticationException(message: 'Unauthorized');
      throw APIError(e.response!.statusCode, e: e);
    }
    return apiResponse.data;
  }
}

/// Provides League API functionality.
mixin NewsItemAPIMixin {
  Future<dynamic> _get(String endpoint) async => {};
  Future<dynamic> _post(String endpoint, Map<String, dynamic> data) async => {};

  Future<NewsItem> getNewsItem(int id) async {
    String endpoint = Constants.newsItemEndPoint;
    Map<String, dynamic> json = await _get(endpoint);
    NewsItem newsItem = NewsItem.fromJson(json);
    return newsItem;
  }
}

/// The API Service.
class APIService with NewsItemAPIMixin {
  final httpClient = Dio(BaseOptions(baseUrl: Constants.baseUrl));

  APIService();

  Future<dynamic> _get(String endpoint) async {
    String s = '${Constants.baseUrl}$endpoint';
    return await _JSONFetcher(
      httpClient: httpClient,
      endpoint: '${Constants.baseUrl}$endpoint',
      method: RequestMethod.GET,
    ).getJSON();
  }
}

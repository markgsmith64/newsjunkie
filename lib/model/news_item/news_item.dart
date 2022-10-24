// To parse this JSON data, do
//
//     final newsItem = newsItemFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'news_item.freezed.dart';
part 'news_item.g.dart';

@freezed
class NewsItem with _$NewsItem {
    const factory NewsItem({
        required Data data,
        required Settings settings,
    }) = _NewsItem;

    factory NewsItem.fromJson(Map<String, dynamic> json) => _$NewsItemFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        required int id,
        required String reporterUserName,
        required String strapLine,
        required String video,
        required int responseCount,
        required int watchCount,
        required Split split,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Split with _$Split {
    const factory Split({
        required int left,
        required int center,
        required int right,
    }) = _Split;

    factory Split.fromJson(Map<String, dynamic> json) => _$SplitFromJson(json);
}

@freezed
class Settings with _$Settings {
    const factory Settings({
        required int nextId,
    }) = _Settings;

    factory Settings.fromJson(Map<String, dynamic> json) => _$SettingsFromJson(json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsItem _$$_NewsItemFromJson(Map<String, dynamic> json) => _$_NewsItem(
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
      settings: Settings.fromJson(json['settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NewsItemToJson(_$_NewsItem instance) =>
    <String, dynamic>{
      'data': instance.data,
      'settings': instance.settings,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      id: json['id'] as int,
      reporterUserName: json['reporterUserName'] as String,
      strapLine: json['strapLine'] as String,
      video: json['video'] as String,
      responseCount: json['responseCount'] as int,
      watchCount: json['watchCount'] as int,
      split: Split.fromJson(json['split'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'id': instance.id,
      'reporterUserName': instance.reporterUserName,
      'strapLine': instance.strapLine,
      'video': instance.video,
      'responseCount': instance.responseCount,
      'watchCount': instance.watchCount,
      'split': instance.split,
    };

_$_Split _$$_SplitFromJson(Map<String, dynamic> json) => _$_Split(
      left: json['left'] as int,
      center: json['center'] as int,
      right: json['right'] as int,
    );

Map<String, dynamic> _$$_SplitToJson(_$_Split instance) => <String, dynamic>{
      'left': instance.left,
      'center': instance.center,
      'right': instance.right,
    };

_$_Settings _$$_SettingsFromJson(Map<String, dynamic> json) => _$_Settings(
      nextId: json['nextId'] as int,
    );

Map<String, dynamic> _$$_SettingsToJson(_$_Settings instance) =>
    <String, dynamic>{
      'nextId': instance.nextId,
    };

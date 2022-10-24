// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'news_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsItem _$NewsItemFromJson(Map<String, dynamic> json) {
  return _NewsItem.fromJson(json);
}

/// @nodoc
mixin _$NewsItem {
  Data get data => throw _privateConstructorUsedError;
  Settings get settings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsItemCopyWith<NewsItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsItemCopyWith<$Res> {
  factory $NewsItemCopyWith(NewsItem value, $Res Function(NewsItem) then) =
      _$NewsItemCopyWithImpl<$Res, NewsItem>;
  @useResult
  $Res call({Data data, Settings settings});

  $DataCopyWith<$Res> get data;
  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class _$NewsItemCopyWithImpl<$Res, $Val extends NewsItem>
    implements $NewsItemCopyWith<$Res> {
  _$NewsItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? settings = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SettingsCopyWith<$Res> get settings {
    return $SettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NewsItemCopyWith<$Res> implements $NewsItemCopyWith<$Res> {
  factory _$$_NewsItemCopyWith(
          _$_NewsItem value, $Res Function(_$_NewsItem) then) =
      __$$_NewsItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data data, Settings settings});

  @override
  $DataCopyWith<$Res> get data;
  @override
  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$_NewsItemCopyWithImpl<$Res>
    extends _$NewsItemCopyWithImpl<$Res, _$_NewsItem>
    implements _$$_NewsItemCopyWith<$Res> {
  __$$_NewsItemCopyWithImpl(
      _$_NewsItem _value, $Res Function(_$_NewsItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? settings = null,
  }) {
    return _then(_$_NewsItem(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsItem implements _NewsItem {
  const _$_NewsItem({required this.data, required this.settings});

  factory _$_NewsItem.fromJson(Map<String, dynamic> json) =>
      _$$_NewsItemFromJson(json);

  @override
  final Data data;
  @override
  final Settings settings;

  @override
  String toString() {
    return 'NewsItem(data: $data, settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsItem &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, settings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsItemCopyWith<_$_NewsItem> get copyWith =>
      __$$_NewsItemCopyWithImpl<_$_NewsItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsItemToJson(
      this,
    );
  }
}

abstract class _NewsItem implements NewsItem {
  const factory _NewsItem(
      {required final Data data,
      required final Settings settings}) = _$_NewsItem;

  factory _NewsItem.fromJson(Map<String, dynamic> json) = _$_NewsItem.fromJson;

  @override
  Data get data;
  @override
  Settings get settings;
  @override
  @JsonKey(ignore: true)
  _$$_NewsItemCopyWith<_$_NewsItem> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  int get id => throw _privateConstructorUsedError;
  String get reporterUserName => throw _privateConstructorUsedError;
  String get strapLine => throw _privateConstructorUsedError;
  String get video => throw _privateConstructorUsedError;
  int get responseCount => throw _privateConstructorUsedError;
  int get watchCount => throw _privateConstructorUsedError;
  Split get split => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {int id,
      String reporterUserName,
      String strapLine,
      String video,
      int responseCount,
      int watchCount,
      Split split});

  $SplitCopyWith<$Res> get split;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reporterUserName = null,
    Object? strapLine = null,
    Object? video = null,
    Object? responseCount = null,
    Object? watchCount = null,
    Object? split = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      reporterUserName: null == reporterUserName
          ? _value.reporterUserName
          : reporterUserName // ignore: cast_nullable_to_non_nullable
              as String,
      strapLine: null == strapLine
          ? _value.strapLine
          : strapLine // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      responseCount: null == responseCount
          ? _value.responseCount
          : responseCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchCount: null == watchCount
          ? _value.watchCount
          : watchCount // ignore: cast_nullable_to_non_nullable
              as int,
      split: null == split
          ? _value.split
          : split // ignore: cast_nullable_to_non_nullable
              as Split,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SplitCopyWith<$Res> get split {
    return $SplitCopyWith<$Res>(_value.split, (value) {
      return _then(_value.copyWith(split: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String reporterUserName,
      String strapLine,
      String video,
      int responseCount,
      int watchCount,
      Split split});

  @override
  $SplitCopyWith<$Res> get split;
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reporterUserName = null,
    Object? strapLine = null,
    Object? video = null,
    Object? responseCount = null,
    Object? watchCount = null,
    Object? split = null,
  }) {
    return _then(_$_Data(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      reporterUserName: null == reporterUserName
          ? _value.reporterUserName
          : reporterUserName // ignore: cast_nullable_to_non_nullable
              as String,
      strapLine: null == strapLine
          ? _value.strapLine
          : strapLine // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      responseCount: null == responseCount
          ? _value.responseCount
          : responseCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchCount: null == watchCount
          ? _value.watchCount
          : watchCount // ignore: cast_nullable_to_non_nullable
              as int,
      split: null == split
          ? _value.split
          : split // ignore: cast_nullable_to_non_nullable
              as Split,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {required this.id,
      required this.reporterUserName,
      required this.strapLine,
      required this.video,
      required this.responseCount,
      required this.watchCount,
      required this.split});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final int id;
  @override
  final String reporterUserName;
  @override
  final String strapLine;
  @override
  final String video;
  @override
  final int responseCount;
  @override
  final int watchCount;
  @override
  final Split split;

  @override
  String toString() {
    return 'Data(id: $id, reporterUserName: $reporterUserName, strapLine: $strapLine, video: $video, responseCount: $responseCount, watchCount: $watchCount, split: $split)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reporterUserName, reporterUserName) ||
                other.reporterUserName == reporterUserName) &&
            (identical(other.strapLine, strapLine) ||
                other.strapLine == strapLine) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.responseCount, responseCount) ||
                other.responseCount == responseCount) &&
            (identical(other.watchCount, watchCount) ||
                other.watchCount == watchCount) &&
            (identical(other.split, split) || other.split == split));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, reporterUserName, strapLine,
      video, responseCount, watchCount, split);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {required final int id,
      required final String reporterUserName,
      required final String strapLine,
      required final String video,
      required final int responseCount,
      required final int watchCount,
      required final Split split}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  int get id;
  @override
  String get reporterUserName;
  @override
  String get strapLine;
  @override
  String get video;
  @override
  int get responseCount;
  @override
  int get watchCount;
  @override
  Split get split;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

Split _$SplitFromJson(Map<String, dynamic> json) {
  return _Split.fromJson(json);
}

/// @nodoc
mixin _$Split {
  int get left => throw _privateConstructorUsedError;
  int get center => throw _privateConstructorUsedError;
  int get right => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SplitCopyWith<Split> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplitCopyWith<$Res> {
  factory $SplitCopyWith(Split value, $Res Function(Split) then) =
      _$SplitCopyWithImpl<$Res, Split>;
  @useResult
  $Res call({int left, int center, int right});
}

/// @nodoc
class _$SplitCopyWithImpl<$Res, $Val extends Split>
    implements $SplitCopyWith<$Res> {
  _$SplitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? left = null,
    Object? center = null,
    Object? right = null,
  }) {
    return _then(_value.copyWith(
      left: null == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as int,
      center: null == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as int,
      right: null == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SplitCopyWith<$Res> implements $SplitCopyWith<$Res> {
  factory _$$_SplitCopyWith(_$_Split value, $Res Function(_$_Split) then) =
      __$$_SplitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int left, int center, int right});
}

/// @nodoc
class __$$_SplitCopyWithImpl<$Res> extends _$SplitCopyWithImpl<$Res, _$_Split>
    implements _$$_SplitCopyWith<$Res> {
  __$$_SplitCopyWithImpl(_$_Split _value, $Res Function(_$_Split) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? left = null,
    Object? center = null,
    Object? right = null,
  }) {
    return _then(_$_Split(
      left: null == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as int,
      center: null == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as int,
      right: null == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Split implements _Split {
  const _$_Split(
      {required this.left, required this.center, required this.right});

  factory _$_Split.fromJson(Map<String, dynamic> json) =>
      _$$_SplitFromJson(json);

  @override
  final int left;
  @override
  final int center;
  @override
  final int right;

  @override
  String toString() {
    return 'Split(left: $left, center: $center, right: $right)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Split &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.center, center) || other.center == center) &&
            (identical(other.right, right) || other.right == right));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, left, center, right);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SplitCopyWith<_$_Split> get copyWith =>
      __$$_SplitCopyWithImpl<_$_Split>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SplitToJson(
      this,
    );
  }
}

abstract class _Split implements Split {
  const factory _Split(
      {required final int left,
      required final int center,
      required final int right}) = _$_Split;

  factory _Split.fromJson(Map<String, dynamic> json) = _$_Split.fromJson;

  @override
  int get left;
  @override
  int get center;
  @override
  int get right;
  @override
  @JsonKey(ignore: true)
  _$$_SplitCopyWith<_$_Split> get copyWith =>
      throw _privateConstructorUsedError;
}

Settings _$SettingsFromJson(Map<String, dynamic> json) {
  return _Settings.fromJson(json);
}

/// @nodoc
mixin _$Settings {
  int get nextId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsCopyWith<Settings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsCopyWith<$Res> {
  factory $SettingsCopyWith(Settings value, $Res Function(Settings) then) =
      _$SettingsCopyWithImpl<$Res, Settings>;
  @useResult
  $Res call({int nextId});
}

/// @nodoc
class _$SettingsCopyWithImpl<$Res, $Val extends Settings>
    implements $SettingsCopyWith<$Res> {
  _$SettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextId = null,
  }) {
    return _then(_value.copyWith(
      nextId: null == nextId
          ? _value.nextId
          : nextId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingsCopyWith<$Res> implements $SettingsCopyWith<$Res> {
  factory _$$_SettingsCopyWith(
          _$_Settings value, $Res Function(_$_Settings) then) =
      __$$_SettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int nextId});
}

/// @nodoc
class __$$_SettingsCopyWithImpl<$Res>
    extends _$SettingsCopyWithImpl<$Res, _$_Settings>
    implements _$$_SettingsCopyWith<$Res> {
  __$$_SettingsCopyWithImpl(
      _$_Settings _value, $Res Function(_$_Settings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextId = null,
  }) {
    return _then(_$_Settings(
      nextId: null == nextId
          ? _value.nextId
          : nextId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Settings implements _Settings {
  const _$_Settings({required this.nextId});

  factory _$_Settings.fromJson(Map<String, dynamic> json) =>
      _$$_SettingsFromJson(json);

  @override
  final int nextId;

  @override
  String toString() {
    return 'Settings(nextId: $nextId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Settings &&
            (identical(other.nextId, nextId) || other.nextId == nextId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nextId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingsCopyWith<_$_Settings> get copyWith =>
      __$$_SettingsCopyWithImpl<_$_Settings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingsToJson(
      this,
    );
  }
}

abstract class _Settings implements Settings {
  const factory _Settings({required final int nextId}) = _$_Settings;

  factory _Settings.fromJson(Map<String, dynamic> json) = _$_Settings.fromJson;

  @override
  int get nextId;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsCopyWith<_$_Settings> get copyWith =>
      throw _privateConstructorUsedError;
}

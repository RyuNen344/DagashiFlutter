// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'page_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PageInfo _$PageInfoFromJson(Map<String, dynamic> json) {
  return _PageInfo.fromJson(json);
}

/// @nodoc
class _$PageInfoTearOff {
  const _$PageInfoTearOff();

// ignore: unused_element
  _PageInfo call(
      {String startCursor,
      String endCursor,
      bool hasPreviousPage,
      bool hasNextPage}) {
    return _PageInfo(
      startCursor: startCursor,
      endCursor: endCursor,
      hasPreviousPage: hasPreviousPage,
      hasNextPage: hasNextPage,
    );
  }

// ignore: unused_element
  PageInfo fromJson(Map<String, Object> json) {
    return PageInfo.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PageInfo = _$PageInfoTearOff();

/// @nodoc
mixin _$PageInfo {
  String get startCursor;
  String get endCursor;
  bool get hasPreviousPage;
  bool get hasNextPage;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PageInfoCopyWith<PageInfo> get copyWith;
}

/// @nodoc
abstract class $PageInfoCopyWith<$Res> {
  factory $PageInfoCopyWith(PageInfo value, $Res Function(PageInfo) then) =
      _$PageInfoCopyWithImpl<$Res>;
  $Res call(
      {String startCursor,
      String endCursor,
      bool hasPreviousPage,
      bool hasNextPage});
}

/// @nodoc
class _$PageInfoCopyWithImpl<$Res> implements $PageInfoCopyWith<$Res> {
  _$PageInfoCopyWithImpl(this._value, this._then);

  final PageInfo _value;
  // ignore: unused_field
  final $Res Function(PageInfo) _then;

  @override
  $Res call({
    Object startCursor = freezed,
    Object endCursor = freezed,
    Object hasPreviousPage = freezed,
    Object hasNextPage = freezed,
  }) {
    return _then(_value.copyWith(
      startCursor:
          startCursor == freezed ? _value.startCursor : startCursor as String,
      endCursor: endCursor == freezed ? _value.endCursor : endCursor as String,
      hasPreviousPage: hasPreviousPage == freezed
          ? _value.hasPreviousPage
          : hasPreviousPage as bool,
      hasNextPage:
          hasNextPage == freezed ? _value.hasNextPage : hasNextPage as bool,
    ));
  }
}

/// @nodoc
abstract class _$PageInfoCopyWith<$Res> implements $PageInfoCopyWith<$Res> {
  factory _$PageInfoCopyWith(_PageInfo value, $Res Function(_PageInfo) then) =
      __$PageInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String startCursor,
      String endCursor,
      bool hasPreviousPage,
      bool hasNextPage});
}

/// @nodoc
class __$PageInfoCopyWithImpl<$Res> extends _$PageInfoCopyWithImpl<$Res>
    implements _$PageInfoCopyWith<$Res> {
  __$PageInfoCopyWithImpl(_PageInfo _value, $Res Function(_PageInfo) _then)
      : super(_value, (v) => _then(v as _PageInfo));

  @override
  _PageInfo get _value => super._value as _PageInfo;

  @override
  $Res call({
    Object startCursor = freezed,
    Object endCursor = freezed,
    Object hasPreviousPage = freezed,
    Object hasNextPage = freezed,
  }) {
    return _then(_PageInfo(
      startCursor:
          startCursor == freezed ? _value.startCursor : startCursor as String,
      endCursor: endCursor == freezed ? _value.endCursor : endCursor as String,
      hasPreviousPage: hasPreviousPage == freezed
          ? _value.hasPreviousPage
          : hasPreviousPage as bool,
      hasNextPage:
          hasNextPage == freezed ? _value.hasNextPage : hasNextPage as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PageInfo implements _PageInfo {
  _$_PageInfo(
      {this.startCursor,
      this.endCursor,
      this.hasPreviousPage,
      this.hasNextPage});

  factory _$_PageInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_PageInfoFromJson(json);

  @override
  final String startCursor;
  @override
  final String endCursor;
  @override
  final bool hasPreviousPage;
  @override
  final bool hasNextPage;

  @override
  String toString() {
    return 'PageInfo(startCursor: $startCursor, endCursor: $endCursor, hasPreviousPage: $hasPreviousPage, hasNextPage: $hasNextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PageInfo &&
            (identical(other.startCursor, startCursor) ||
                const DeepCollectionEquality()
                    .equals(other.startCursor, startCursor)) &&
            (identical(other.endCursor, endCursor) ||
                const DeepCollectionEquality()
                    .equals(other.endCursor, endCursor)) &&
            (identical(other.hasPreviousPage, hasPreviousPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasPreviousPage, hasPreviousPage)) &&
            (identical(other.hasNextPage, hasNextPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasNextPage, hasNextPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(startCursor) ^
      const DeepCollectionEquality().hash(endCursor) ^
      const DeepCollectionEquality().hash(hasPreviousPage) ^
      const DeepCollectionEquality().hash(hasNextPage);

  @JsonKey(ignore: true)
  @override
  _$PageInfoCopyWith<_PageInfo> get copyWith =>
      __$PageInfoCopyWithImpl<_PageInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PageInfoToJson(this);
  }
}

abstract class _PageInfo implements PageInfo {
  factory _PageInfo(
      {String startCursor,
      String endCursor,
      bool hasPreviousPage,
      bool hasNextPage}) = _$_PageInfo;

  factory _PageInfo.fromJson(Map<String, dynamic> json) = _$_PageInfo.fromJson;

  @override
  String get startCursor;
  @override
  String get endCursor;
  @override
  bool get hasPreviousPage;
  @override
  bool get hasNextPage;
  @override
  @JsonKey(ignore: true)
  _$PageInfoCopyWith<_PageInfo> get copyWith;
}

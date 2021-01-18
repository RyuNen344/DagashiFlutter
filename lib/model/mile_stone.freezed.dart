// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'mile_stone.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MileStoneTearOff {
  const _$MileStoneTearOff();

// ignore: unused_element
  _MileStone call(
      {@required String id,
      @required int number,
      @required String url,
      @required String title,
      @required String description,
      @required DateTime closedAt,
      @required List<SummaryIssue> issues,
      @required String path}) {
    return _MileStone(
      id: id,
      number: number,
      url: url,
      title: title,
      description: description,
      closedAt: closedAt,
      issues: issues,
      path: path,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MileStone = _$MileStoneTearOff();

/// @nodoc
mixin _$MileStone {
  String get id;
  int get number;
  String get url;
  String get title;
  String get description;
  DateTime get closedAt;
  List<SummaryIssue> get issues;
  String get path;

  @JsonKey(ignore: true)
  $MileStoneCopyWith<MileStone> get copyWith;
}

/// @nodoc
abstract class $MileStoneCopyWith<$Res> {
  factory $MileStoneCopyWith(MileStone value, $Res Function(MileStone) then) =
      _$MileStoneCopyWithImpl<$Res>;
  $Res call(
      {String id,
      int number,
      String url,
      String title,
      String description,
      DateTime closedAt,
      List<SummaryIssue> issues,
      String path});
}

/// @nodoc
class _$MileStoneCopyWithImpl<$Res> implements $MileStoneCopyWith<$Res> {
  _$MileStoneCopyWithImpl(this._value, this._then);

  final MileStone _value;
  // ignore: unused_field
  final $Res Function(MileStone) _then;

  @override
  $Res call({
    Object id = freezed,
    Object number = freezed,
    Object url = freezed,
    Object title = freezed,
    Object description = freezed,
    Object closedAt = freezed,
    Object issues = freezed,
    Object path = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      number: number == freezed ? _value.number : number as int,
      url: url == freezed ? _value.url : url as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      closedAt: closedAt == freezed ? _value.closedAt : closedAt as DateTime,
      issues: issues == freezed ? _value.issues : issues as List<SummaryIssue>,
      path: path == freezed ? _value.path : path as String,
    ));
  }
}

/// @nodoc
abstract class _$MileStoneCopyWith<$Res> implements $MileStoneCopyWith<$Res> {
  factory _$MileStoneCopyWith(
          _MileStone value, $Res Function(_MileStone) then) =
      __$MileStoneCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      int number,
      String url,
      String title,
      String description,
      DateTime closedAt,
      List<SummaryIssue> issues,
      String path});
}

/// @nodoc
class __$MileStoneCopyWithImpl<$Res> extends _$MileStoneCopyWithImpl<$Res>
    implements _$MileStoneCopyWith<$Res> {
  __$MileStoneCopyWithImpl(_MileStone _value, $Res Function(_MileStone) _then)
      : super(_value, (v) => _then(v as _MileStone));

  @override
  _MileStone get _value => super._value as _MileStone;

  @override
  $Res call({
    Object id = freezed,
    Object number = freezed,
    Object url = freezed,
    Object title = freezed,
    Object description = freezed,
    Object closedAt = freezed,
    Object issues = freezed,
    Object path = freezed,
  }) {
    return _then(_MileStone(
      id: id == freezed ? _value.id : id as String,
      number: number == freezed ? _value.number : number as int,
      url: url == freezed ? _value.url : url as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      closedAt: closedAt == freezed ? _value.closedAt : closedAt as DateTime,
      issues: issues == freezed ? _value.issues : issues as List<SummaryIssue>,
      path: path == freezed ? _value.path : path as String,
    ));
  }
}

/// @nodoc
class _$_MileStone implements _MileStone {
  _$_MileStone(
      {@required this.id,
      @required this.number,
      @required this.url,
      @required this.title,
      @required this.description,
      @required this.closedAt,
      @required this.issues,
      @required this.path})
      : assert(id != null),
        assert(number != null),
        assert(url != null),
        assert(title != null),
        assert(description != null),
        assert(closedAt != null),
        assert(issues != null),
        assert(path != null);

  @override
  final String id;
  @override
  final int number;
  @override
  final String url;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime closedAt;
  @override
  final List<SummaryIssue> issues;
  @override
  final String path;

  @override
  String toString() {
    return 'MileStone(id: $id, number: $number, url: $url, title: $title, description: $description, closedAt: $closedAt, issues: $issues, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MileStone &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.closedAt, closedAt) ||
                const DeepCollectionEquality()
                    .equals(other.closedAt, closedAt)) &&
            (identical(other.issues, issues) ||
                const DeepCollectionEquality().equals(other.issues, issues)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(closedAt) ^
      const DeepCollectionEquality().hash(issues) ^
      const DeepCollectionEquality().hash(path);

  @JsonKey(ignore: true)
  @override
  _$MileStoneCopyWith<_MileStone> get copyWith =>
      __$MileStoneCopyWithImpl<_MileStone>(this, _$identity);
}

abstract class _MileStone implements MileStone {
  factory _MileStone(
      {@required String id,
      @required int number,
      @required String url,
      @required String title,
      @required String description,
      @required DateTime closedAt,
      @required List<SummaryIssue> issues,
      @required String path}) = _$_MileStone;

  @override
  String get id;
  @override
  int get number;
  @override
  String get url;
  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get closedAt;
  @override
  List<SummaryIssue> get issues;
  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$MileStoneCopyWith<_MileStone> get copyWith;
}

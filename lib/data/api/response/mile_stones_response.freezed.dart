// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'mile_stones_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MileStonesRootResponse _$MileStonesRootResponseFromJson(
    Map<String, dynamic> json) {
  return _MileStonesRootResponse.fromJson(json);
}

/// @nodoc
class _$MileStonesRootResponseTearOff {
  const _$MileStonesRootResponseTearOff();

// ignore: unused_element
  _MileStonesRootResponse call(
      {@required String name,
      @required String url,
      @required MileStonesResponse milestones}) {
    return _MileStonesRootResponse(
      name: name,
      url: url,
      milestones: milestones,
    );
  }

// ignore: unused_element
  MileStonesRootResponse fromJson(Map<String, Object> json) {
    return MileStonesRootResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MileStonesRootResponse = _$MileStonesRootResponseTearOff();

/// @nodoc
mixin _$MileStonesRootResponse {
  String get name;
  String get url;
  MileStonesResponse get milestones;

  Map<String, dynamic> toJson();
  $MileStonesRootResponseCopyWith<MileStonesRootResponse> get copyWith;
}

/// @nodoc
abstract class $MileStonesRootResponseCopyWith<$Res> {
  factory $MileStonesRootResponseCopyWith(MileStonesRootResponse value,
          $Res Function(MileStonesRootResponse) then) =
      _$MileStonesRootResponseCopyWithImpl<$Res>;
  $Res call({String name, String url, MileStonesResponse milestones});

  $MileStonesResponseCopyWith<$Res> get milestones;
}

/// @nodoc
class _$MileStonesRootResponseCopyWithImpl<$Res>
    implements $MileStonesRootResponseCopyWith<$Res> {
  _$MileStonesRootResponseCopyWithImpl(this._value, this._then);

  final MileStonesRootResponse _value;
  // ignore: unused_field
  final $Res Function(MileStonesRootResponse) _then;

  @override
  $Res call({
    Object name = freezed,
    Object url = freezed,
    Object milestones = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      url: url == freezed ? _value.url : url as String,
      milestones: milestones == freezed
          ? _value.milestones
          : milestones as MileStonesResponse,
    ));
  }

  @override
  $MileStonesResponseCopyWith<$Res> get milestones {
    if (_value.milestones == null) {
      return null;
    }
    return $MileStonesResponseCopyWith<$Res>(_value.milestones, (value) {
      return _then(_value.copyWith(milestones: value));
    });
  }
}

/// @nodoc
abstract class _$MileStonesRootResponseCopyWith<$Res>
    implements $MileStonesRootResponseCopyWith<$Res> {
  factory _$MileStonesRootResponseCopyWith(_MileStonesRootResponse value,
          $Res Function(_MileStonesRootResponse) then) =
      __$MileStonesRootResponseCopyWithImpl<$Res>;
  @override
  $Res call({String name, String url, MileStonesResponse milestones});

  @override
  $MileStonesResponseCopyWith<$Res> get milestones;
}

/// @nodoc
class __$MileStonesRootResponseCopyWithImpl<$Res>
    extends _$MileStonesRootResponseCopyWithImpl<$Res>
    implements _$MileStonesRootResponseCopyWith<$Res> {
  __$MileStonesRootResponseCopyWithImpl(_MileStonesRootResponse _value,
      $Res Function(_MileStonesRootResponse) _then)
      : super(_value, (v) => _then(v as _MileStonesRootResponse));

  @override
  _MileStonesRootResponse get _value => super._value as _MileStonesRootResponse;

  @override
  $Res call({
    Object name = freezed,
    Object url = freezed,
    Object milestones = freezed,
  }) {
    return _then(_MileStonesRootResponse(
      name: name == freezed ? _value.name : name as String,
      url: url == freezed ? _value.url : url as String,
      milestones: milestones == freezed
          ? _value.milestones
          : milestones as MileStonesResponse,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MileStonesRootResponse
    with DiagnosticableTreeMixin
    implements _MileStonesRootResponse {
  _$_MileStonesRootResponse(
      {@required this.name, @required this.url, @required this.milestones})
      : assert(name != null),
        assert(url != null),
        assert(milestones != null);

  factory _$_MileStonesRootResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_MileStonesRootResponseFromJson(json);

  @override
  final String name;
  @override
  final String url;
  @override
  final MileStonesResponse milestones;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MileStonesRootResponse(name: $name, url: $url, milestones: $milestones)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MileStonesRootResponse'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('milestones', milestones));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MileStonesRootResponse &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.milestones, milestones) ||
                const DeepCollectionEquality()
                    .equals(other.milestones, milestones)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(milestones);

  @override
  _$MileStonesRootResponseCopyWith<_MileStonesRootResponse> get copyWith =>
      __$MileStonesRootResponseCopyWithImpl<_MileStonesRootResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MileStonesRootResponseToJson(this);
  }
}

abstract class _MileStonesRootResponse implements MileStonesRootResponse {
  factory _MileStonesRootResponse(
      {@required String name,
      @required String url,
      @required MileStonesResponse milestones}) = _$_MileStonesRootResponse;

  factory _MileStonesRootResponse.fromJson(Map<String, dynamic> json) =
      _$_MileStonesRootResponse.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  MileStonesResponse get milestones;
  @override
  _$MileStonesRootResponseCopyWith<_MileStonesRootResponse> get copyWith;
}

MileStonesResponse _$MileStonesResponseFromJson(Map<String, dynamic> json) {
  return _MileStonesResponse.fromJson(json);
}

/// @nodoc
class _$MileStonesResponseTearOff {
  const _$MileStonesResponseTearOff();

// ignore: unused_element
  _MileStonesResponse call(
      {@required int totalCount,
      @required List<MileStoneNodeResponse> nodes,
      @required PageInfo pageInfo}) {
    return _MileStonesResponse(
      totalCount: totalCount,
      nodes: nodes,
      pageInfo: pageInfo,
    );
  }

// ignore: unused_element
  MileStonesResponse fromJson(Map<String, Object> json) {
    return MileStonesResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MileStonesResponse = _$MileStonesResponseTearOff();

/// @nodoc
mixin _$MileStonesResponse {
  int get totalCount;
  List<MileStoneNodeResponse> get nodes;
  PageInfo get pageInfo;

  Map<String, dynamic> toJson();
  $MileStonesResponseCopyWith<MileStonesResponse> get copyWith;
}

/// @nodoc
abstract class $MileStonesResponseCopyWith<$Res> {
  factory $MileStonesResponseCopyWith(
          MileStonesResponse value, $Res Function(MileStonesResponse) then) =
      _$MileStonesResponseCopyWithImpl<$Res>;
  $Res call(
      {int totalCount, List<MileStoneNodeResponse> nodes, PageInfo pageInfo});

  $PageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class _$MileStonesResponseCopyWithImpl<$Res>
    implements $MileStonesResponseCopyWith<$Res> {
  _$MileStonesResponseCopyWithImpl(this._value, this._then);

  final MileStonesResponse _value;
  // ignore: unused_field
  final $Res Function(MileStonesResponse) _then;

  @override
  $Res call({
    Object totalCount = freezed,
    Object nodes = freezed,
    Object pageInfo = freezed,
  }) {
    return _then(_value.copyWith(
      totalCount: totalCount == freezed ? _value.totalCount : totalCount as int,
      nodes: nodes == freezed
          ? _value.nodes
          : nodes as List<MileStoneNodeResponse>,
      pageInfo: pageInfo == freezed ? _value.pageInfo : pageInfo as PageInfo,
    ));
  }

  @override
  $PageInfoCopyWith<$Res> get pageInfo {
    if (_value.pageInfo == null) {
      return null;
    }
    return $PageInfoCopyWith<$Res>(_value.pageInfo, (value) {
      return _then(_value.copyWith(pageInfo: value));
    });
  }
}

/// @nodoc
abstract class _$MileStonesResponseCopyWith<$Res>
    implements $MileStonesResponseCopyWith<$Res> {
  factory _$MileStonesResponseCopyWith(
          _MileStonesResponse value, $Res Function(_MileStonesResponse) then) =
      __$MileStonesResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int totalCount, List<MileStoneNodeResponse> nodes, PageInfo pageInfo});

  @override
  $PageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class __$MileStonesResponseCopyWithImpl<$Res>
    extends _$MileStonesResponseCopyWithImpl<$Res>
    implements _$MileStonesResponseCopyWith<$Res> {
  __$MileStonesResponseCopyWithImpl(
      _MileStonesResponse _value, $Res Function(_MileStonesResponse) _then)
      : super(_value, (v) => _then(v as _MileStonesResponse));

  @override
  _MileStonesResponse get _value => super._value as _MileStonesResponse;

  @override
  $Res call({
    Object totalCount = freezed,
    Object nodes = freezed,
    Object pageInfo = freezed,
  }) {
    return _then(_MileStonesResponse(
      totalCount: totalCount == freezed ? _value.totalCount : totalCount as int,
      nodes: nodes == freezed
          ? _value.nodes
          : nodes as List<MileStoneNodeResponse>,
      pageInfo: pageInfo == freezed ? _value.pageInfo : pageInfo as PageInfo,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MileStonesResponse
    with DiagnosticableTreeMixin
    implements _MileStonesResponse {
  _$_MileStonesResponse(
      {@required this.totalCount,
      @required this.nodes,
      @required this.pageInfo})
      : assert(totalCount != null),
        assert(nodes != null),
        assert(pageInfo != null);

  factory _$_MileStonesResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_MileStonesResponseFromJson(json);

  @override
  final int totalCount;
  @override
  final List<MileStoneNodeResponse> nodes;
  @override
  final PageInfo pageInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MileStonesResponse(totalCount: $totalCount, nodes: $nodes, pageInfo: $pageInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MileStonesResponse'))
      ..add(DiagnosticsProperty('totalCount', totalCount))
      ..add(DiagnosticsProperty('nodes', nodes))
      ..add(DiagnosticsProperty('pageInfo', pageInfo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MileStonesResponse &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.nodes, nodes) ||
                const DeepCollectionEquality().equals(other.nodes, nodes)) &&
            (identical(other.pageInfo, pageInfo) ||
                const DeepCollectionEquality()
                    .equals(other.pageInfo, pageInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(nodes) ^
      const DeepCollectionEquality().hash(pageInfo);

  @override
  _$MileStonesResponseCopyWith<_MileStonesResponse> get copyWith =>
      __$MileStonesResponseCopyWithImpl<_MileStonesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MileStonesResponseToJson(this);
  }
}

abstract class _MileStonesResponse implements MileStonesResponse {
  factory _MileStonesResponse(
      {@required int totalCount,
      @required List<MileStoneNodeResponse> nodes,
      @required PageInfo pageInfo}) = _$_MileStonesResponse;

  factory _MileStonesResponse.fromJson(Map<String, dynamic> json) =
      _$_MileStonesResponse.fromJson;

  @override
  int get totalCount;
  @override
  List<MileStoneNodeResponse> get nodes;
  @override
  PageInfo get pageInfo;
  @override
  _$MileStonesResponseCopyWith<_MileStonesResponse> get copyWith;
}

MileStoneNodeResponse _$MileStoneNodeResponseFromJson(
    Map<String, dynamic> json) {
  return _MileStoneNodeResponse.fromJson(json);
}

/// @nodoc
class _$MileStoneNodeResponseTearOff {
  const _$MileStoneNodeResponseTearOff();

// ignore: unused_element
  _MileStoneNodeResponse call(
      {@required String id,
      @required int number,
      @required String url,
      @required String title,
      @required String description,
      @required DateTime closedAt,
      @required MileStoneIssuesResponse issues,
      @required String path}) {
    return _MileStoneNodeResponse(
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

// ignore: unused_element
  MileStoneNodeResponse fromJson(Map<String, Object> json) {
    return MileStoneNodeResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MileStoneNodeResponse = _$MileStoneNodeResponseTearOff();

/// @nodoc
mixin _$MileStoneNodeResponse {
  String get id;
  int get number;
  String get url;
  String get title;
  String get description;
  DateTime get closedAt;
  MileStoneIssuesResponse get issues;
  String get path;

  Map<String, dynamic> toJson();
  $MileStoneNodeResponseCopyWith<MileStoneNodeResponse> get copyWith;
}

/// @nodoc
abstract class $MileStoneNodeResponseCopyWith<$Res> {
  factory $MileStoneNodeResponseCopyWith(MileStoneNodeResponse value,
          $Res Function(MileStoneNodeResponse) then) =
      _$MileStoneNodeResponseCopyWithImpl<$Res>;
  $Res call(
      {String id,
      int number,
      String url,
      String title,
      String description,
      DateTime closedAt,
      MileStoneIssuesResponse issues,
      String path});

  $MileStoneIssuesResponseCopyWith<$Res> get issues;
}

/// @nodoc
class _$MileStoneNodeResponseCopyWithImpl<$Res>
    implements $MileStoneNodeResponseCopyWith<$Res> {
  _$MileStoneNodeResponseCopyWithImpl(this._value, this._then);

  final MileStoneNodeResponse _value;
  // ignore: unused_field
  final $Res Function(MileStoneNodeResponse) _then;

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
      issues:
          issues == freezed ? _value.issues : issues as MileStoneIssuesResponse,
      path: path == freezed ? _value.path : path as String,
    ));
  }

  @override
  $MileStoneIssuesResponseCopyWith<$Res> get issues {
    if (_value.issues == null) {
      return null;
    }
    return $MileStoneIssuesResponseCopyWith<$Res>(_value.issues, (value) {
      return _then(_value.copyWith(issues: value));
    });
  }
}

/// @nodoc
abstract class _$MileStoneNodeResponseCopyWith<$Res>
    implements $MileStoneNodeResponseCopyWith<$Res> {
  factory _$MileStoneNodeResponseCopyWith(_MileStoneNodeResponse value,
          $Res Function(_MileStoneNodeResponse) then) =
      __$MileStoneNodeResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      int number,
      String url,
      String title,
      String description,
      DateTime closedAt,
      MileStoneIssuesResponse issues,
      String path});

  @override
  $MileStoneIssuesResponseCopyWith<$Res> get issues;
}

/// @nodoc
class __$MileStoneNodeResponseCopyWithImpl<$Res>
    extends _$MileStoneNodeResponseCopyWithImpl<$Res>
    implements _$MileStoneNodeResponseCopyWith<$Res> {
  __$MileStoneNodeResponseCopyWithImpl(_MileStoneNodeResponse _value,
      $Res Function(_MileStoneNodeResponse) _then)
      : super(_value, (v) => _then(v as _MileStoneNodeResponse));

  @override
  _MileStoneNodeResponse get _value => super._value as _MileStoneNodeResponse;

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
    return _then(_MileStoneNodeResponse(
      id: id == freezed ? _value.id : id as String,
      number: number == freezed ? _value.number : number as int,
      url: url == freezed ? _value.url : url as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      closedAt: closedAt == freezed ? _value.closedAt : closedAt as DateTime,
      issues:
          issues == freezed ? _value.issues : issues as MileStoneIssuesResponse,
      path: path == freezed ? _value.path : path as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MileStoneNodeResponse
    with DiagnosticableTreeMixin
    implements _MileStoneNodeResponse {
  _$_MileStoneNodeResponse(
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

  factory _$_MileStoneNodeResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_MileStoneNodeResponseFromJson(json);

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
  final MileStoneIssuesResponse issues;
  @override
  final String path;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MileStoneNodeResponse(id: $id, number: $number, url: $url, title: $title, description: $description, closedAt: $closedAt, issues: $issues, path: $path)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MileStoneNodeResponse'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('number', number))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('closedAt', closedAt))
      ..add(DiagnosticsProperty('issues', issues))
      ..add(DiagnosticsProperty('path', path));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MileStoneNodeResponse &&
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

  @override
  _$MileStoneNodeResponseCopyWith<_MileStoneNodeResponse> get copyWith =>
      __$MileStoneNodeResponseCopyWithImpl<_MileStoneNodeResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MileStoneNodeResponseToJson(this);
  }
}

abstract class _MileStoneNodeResponse implements MileStoneNodeResponse {
  factory _MileStoneNodeResponse(
      {@required String id,
      @required int number,
      @required String url,
      @required String title,
      @required String description,
      @required DateTime closedAt,
      @required MileStoneIssuesResponse issues,
      @required String path}) = _$_MileStoneNodeResponse;

  factory _MileStoneNodeResponse.fromJson(Map<String, dynamic> json) =
      _$_MileStoneNodeResponse.fromJson;

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
  MileStoneIssuesResponse get issues;
  @override
  String get path;
  @override
  _$MileStoneNodeResponseCopyWith<_MileStoneNodeResponse> get copyWith;
}

MileStoneIssuesResponse _$MileStoneIssuesResponseFromJson(
    Map<String, dynamic> json) {
  return _MileStoneIssuesResponse.fromJson(json);
}

/// @nodoc
class _$MileStoneIssuesResponseTearOff {
  const _$MileStoneIssuesResponseTearOff();

// ignore: unused_element
  _MileStoneIssuesResponse call(
      {@required int totalCount, List<MileStoneIssueResponse> nodes}) {
    return _MileStoneIssuesResponse(
      totalCount: totalCount,
      nodes: nodes,
    );
  }

// ignore: unused_element
  MileStoneIssuesResponse fromJson(Map<String, Object> json) {
    return MileStoneIssuesResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MileStoneIssuesResponse = _$MileStoneIssuesResponseTearOff();

/// @nodoc
mixin _$MileStoneIssuesResponse {
  int get totalCount;
  List<MileStoneIssueResponse> get nodes;

  Map<String, dynamic> toJson();
  $MileStoneIssuesResponseCopyWith<MileStoneIssuesResponse> get copyWith;
}

/// @nodoc
abstract class $MileStoneIssuesResponseCopyWith<$Res> {
  factory $MileStoneIssuesResponseCopyWith(MileStoneIssuesResponse value,
          $Res Function(MileStoneIssuesResponse) then) =
      _$MileStoneIssuesResponseCopyWithImpl<$Res>;
  $Res call({int totalCount, List<MileStoneIssueResponse> nodes});
}

/// @nodoc
class _$MileStoneIssuesResponseCopyWithImpl<$Res>
    implements $MileStoneIssuesResponseCopyWith<$Res> {
  _$MileStoneIssuesResponseCopyWithImpl(this._value, this._then);

  final MileStoneIssuesResponse _value;
  // ignore: unused_field
  final $Res Function(MileStoneIssuesResponse) _then;

  @override
  $Res call({
    Object totalCount = freezed,
    Object nodes = freezed,
  }) {
    return _then(_value.copyWith(
      totalCount: totalCount == freezed ? _value.totalCount : totalCount as int,
      nodes: nodes == freezed
          ? _value.nodes
          : nodes as List<MileStoneIssueResponse>,
    ));
  }
}

/// @nodoc
abstract class _$MileStoneIssuesResponseCopyWith<$Res>
    implements $MileStoneIssuesResponseCopyWith<$Res> {
  factory _$MileStoneIssuesResponseCopyWith(_MileStoneIssuesResponse value,
          $Res Function(_MileStoneIssuesResponse) then) =
      __$MileStoneIssuesResponseCopyWithImpl<$Res>;
  @override
  $Res call({int totalCount, List<MileStoneIssueResponse> nodes});
}

/// @nodoc
class __$MileStoneIssuesResponseCopyWithImpl<$Res>
    extends _$MileStoneIssuesResponseCopyWithImpl<$Res>
    implements _$MileStoneIssuesResponseCopyWith<$Res> {
  __$MileStoneIssuesResponseCopyWithImpl(_MileStoneIssuesResponse _value,
      $Res Function(_MileStoneIssuesResponse) _then)
      : super(_value, (v) => _then(v as _MileStoneIssuesResponse));

  @override
  _MileStoneIssuesResponse get _value =>
      super._value as _MileStoneIssuesResponse;

  @override
  $Res call({
    Object totalCount = freezed,
    Object nodes = freezed,
  }) {
    return _then(_MileStoneIssuesResponse(
      totalCount: totalCount == freezed ? _value.totalCount : totalCount as int,
      nodes: nodes == freezed
          ? _value.nodes
          : nodes as List<MileStoneIssueResponse>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MileStoneIssuesResponse
    with DiagnosticableTreeMixin
    implements _MileStoneIssuesResponse {
  _$_MileStoneIssuesResponse({@required this.totalCount, this.nodes})
      : assert(totalCount != null);

  factory _$_MileStoneIssuesResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_MileStoneIssuesResponseFromJson(json);

  @override
  final int totalCount;
  @override
  final List<MileStoneIssueResponse> nodes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MileStoneIssuesResponse(totalCount: $totalCount, nodes: $nodes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MileStoneIssuesResponse'))
      ..add(DiagnosticsProperty('totalCount', totalCount))
      ..add(DiagnosticsProperty('nodes', nodes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MileStoneIssuesResponse &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.nodes, nodes) ||
                const DeepCollectionEquality().equals(other.nodes, nodes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(nodes);

  @override
  _$MileStoneIssuesResponseCopyWith<_MileStoneIssuesResponse> get copyWith =>
      __$MileStoneIssuesResponseCopyWithImpl<_MileStoneIssuesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MileStoneIssuesResponseToJson(this);
  }
}

abstract class _MileStoneIssuesResponse implements MileStoneIssuesResponse {
  factory _MileStoneIssuesResponse(
      {@required int totalCount,
      List<MileStoneIssueResponse> nodes}) = _$_MileStoneIssuesResponse;

  factory _MileStoneIssuesResponse.fromJson(Map<String, dynamic> json) =
      _$_MileStoneIssuesResponse.fromJson;

  @override
  int get totalCount;
  @override
  List<MileStoneIssueResponse> get nodes;
  @override
  _$MileStoneIssuesResponseCopyWith<_MileStoneIssuesResponse> get copyWith;
}

MileStoneIssueResponse _$MileStoneIssueResponseFromJson(
    Map<String, dynamic> json) {
  return _MileStoneIssueResponse.fromJson(json);
}

/// @nodoc
class _$MileStoneIssueResponseTearOff {
  const _$MileStoneIssueResponseTearOff();

// ignore: unused_element
  _MileStoneIssueResponse call({@required String title}) {
    return _MileStoneIssueResponse(
      title: title,
    );
  }

// ignore: unused_element
  MileStoneIssueResponse fromJson(Map<String, Object> json) {
    return MileStoneIssueResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MileStoneIssueResponse = _$MileStoneIssueResponseTearOff();

/// @nodoc
mixin _$MileStoneIssueResponse {
  String get title;

  Map<String, dynamic> toJson();
  $MileStoneIssueResponseCopyWith<MileStoneIssueResponse> get copyWith;
}

/// @nodoc
abstract class $MileStoneIssueResponseCopyWith<$Res> {
  factory $MileStoneIssueResponseCopyWith(MileStoneIssueResponse value,
          $Res Function(MileStoneIssueResponse) then) =
      _$MileStoneIssueResponseCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class _$MileStoneIssueResponseCopyWithImpl<$Res>
    implements $MileStoneIssueResponseCopyWith<$Res> {
  _$MileStoneIssueResponseCopyWithImpl(this._value, this._then);

  final MileStoneIssueResponse _value;
  // ignore: unused_field
  final $Res Function(MileStoneIssueResponse) _then;

  @override
  $Res call({
    Object title = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
    ));
  }
}

/// @nodoc
abstract class _$MileStoneIssueResponseCopyWith<$Res>
    implements $MileStoneIssueResponseCopyWith<$Res> {
  factory _$MileStoneIssueResponseCopyWith(_MileStoneIssueResponse value,
          $Res Function(_MileStoneIssueResponse) then) =
      __$MileStoneIssueResponseCopyWithImpl<$Res>;
  @override
  $Res call({String title});
}

/// @nodoc
class __$MileStoneIssueResponseCopyWithImpl<$Res>
    extends _$MileStoneIssueResponseCopyWithImpl<$Res>
    implements _$MileStoneIssueResponseCopyWith<$Res> {
  __$MileStoneIssueResponseCopyWithImpl(_MileStoneIssueResponse _value,
      $Res Function(_MileStoneIssueResponse) _then)
      : super(_value, (v) => _then(v as _MileStoneIssueResponse));

  @override
  _MileStoneIssueResponse get _value => super._value as _MileStoneIssueResponse;

  @override
  $Res call({
    Object title = freezed,
  }) {
    return _then(_MileStoneIssueResponse(
      title: title == freezed ? _value.title : title as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MileStoneIssueResponse
    with DiagnosticableTreeMixin
    implements _MileStoneIssueResponse {
  _$_MileStoneIssueResponse({@required this.title}) : assert(title != null);

  factory _$_MileStoneIssueResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_MileStoneIssueResponseFromJson(json);

  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MileStoneIssueResponse(title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MileStoneIssueResponse'))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MileStoneIssueResponse &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @override
  _$MileStoneIssueResponseCopyWith<_MileStoneIssueResponse> get copyWith =>
      __$MileStoneIssueResponseCopyWithImpl<_MileStoneIssueResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MileStoneIssueResponseToJson(this);
  }
}

abstract class _MileStoneIssueResponse implements MileStoneIssueResponse {
  factory _MileStoneIssueResponse({@required String title}) =
      _$_MileStoneIssueResponse;

  factory _MileStoneIssueResponse.fromJson(Map<String, dynamic> json) =
      _$_MileStoneIssueResponse.fromJson;

  @override
  String get title;
  @override
  _$MileStoneIssueResponseCopyWith<_MileStoneIssueResponse> get copyWith;
}

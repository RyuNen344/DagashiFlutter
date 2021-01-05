// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'issue_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
IssueRootResponse _$IssueRootResponseFromJson(Map<String, dynamic> json) {
  return _IssueRootResponse.fromJson(json);
}

/// @nodoc
class _$IssueRootResponseTearOff {
  const _$IssueRootResponseTearOff();

// ignore: unused_element
  _IssueRootResponse call(
      {@required String id,
      @required int number,
      @required String url,
      @required String title,
      @required String description,
      @required DateTime closedAt,
      @required IssuesResponse issues}) {
    return _IssueRootResponse(
      id: id,
      number: number,
      url: url,
      title: title,
      description: description,
      closedAt: closedAt,
      issues: issues,
    );
  }

// ignore: unused_element
  IssueRootResponse fromJson(Map<String, Object> json) {
    return IssueRootResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $IssueRootResponse = _$IssueRootResponseTearOff();

/// @nodoc
mixin _$IssueRootResponse {
  String get id;
  int get number;
  String get url;
  String get title;
  String get description;
  DateTime get closedAt;
  IssuesResponse get issues;

  Map<String, dynamic> toJson();
  $IssueRootResponseCopyWith<IssueRootResponse> get copyWith;
}

/// @nodoc
abstract class $IssueRootResponseCopyWith<$Res> {
  factory $IssueRootResponseCopyWith(
          IssueRootResponse value, $Res Function(IssueRootResponse) then) =
      _$IssueRootResponseCopyWithImpl<$Res>;
  $Res call(
      {String id,
      int number,
      String url,
      String title,
      String description,
      DateTime closedAt,
      IssuesResponse issues});

  $IssuesResponseCopyWith<$Res> get issues;
}

/// @nodoc
class _$IssueRootResponseCopyWithImpl<$Res>
    implements $IssueRootResponseCopyWith<$Res> {
  _$IssueRootResponseCopyWithImpl(this._value, this._then);

  final IssueRootResponse _value;
  // ignore: unused_field
  final $Res Function(IssueRootResponse) _then;

  @override
  $Res call({
    Object id = freezed,
    Object number = freezed,
    Object url = freezed,
    Object title = freezed,
    Object description = freezed,
    Object closedAt = freezed,
    Object issues = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      number: number == freezed ? _value.number : number as int,
      url: url == freezed ? _value.url : url as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      closedAt: closedAt == freezed ? _value.closedAt : closedAt as DateTime,
      issues: issues == freezed ? _value.issues : issues as IssuesResponse,
    ));
  }

  @override
  $IssuesResponseCopyWith<$Res> get issues {
    if (_value.issues == null) {
      return null;
    }
    return $IssuesResponseCopyWith<$Res>(_value.issues, (value) {
      return _then(_value.copyWith(issues: value));
    });
  }
}

/// @nodoc
abstract class _$IssueRootResponseCopyWith<$Res>
    implements $IssueRootResponseCopyWith<$Res> {
  factory _$IssueRootResponseCopyWith(
          _IssueRootResponse value, $Res Function(_IssueRootResponse) then) =
      __$IssueRootResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      int number,
      String url,
      String title,
      String description,
      DateTime closedAt,
      IssuesResponse issues});

  @override
  $IssuesResponseCopyWith<$Res> get issues;
}

/// @nodoc
class __$IssueRootResponseCopyWithImpl<$Res>
    extends _$IssueRootResponseCopyWithImpl<$Res>
    implements _$IssueRootResponseCopyWith<$Res> {
  __$IssueRootResponseCopyWithImpl(
      _IssueRootResponse _value, $Res Function(_IssueRootResponse) _then)
      : super(_value, (v) => _then(v as _IssueRootResponse));

  @override
  _IssueRootResponse get _value => super._value as _IssueRootResponse;

  @override
  $Res call({
    Object id = freezed,
    Object number = freezed,
    Object url = freezed,
    Object title = freezed,
    Object description = freezed,
    Object closedAt = freezed,
    Object issues = freezed,
  }) {
    return _then(_IssueRootResponse(
      id: id == freezed ? _value.id : id as String,
      number: number == freezed ? _value.number : number as int,
      url: url == freezed ? _value.url : url as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      closedAt: closedAt == freezed ? _value.closedAt : closedAt as DateTime,
      issues: issues == freezed ? _value.issues : issues as IssuesResponse,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_IssueRootResponse implements _IssueRootResponse {
  _$_IssueRootResponse(
      {@required this.id,
      @required this.number,
      @required this.url,
      @required this.title,
      @required this.description,
      @required this.closedAt,
      @required this.issues})
      : assert(id != null),
        assert(number != null),
        assert(url != null),
        assert(title != null),
        assert(description != null),
        assert(closedAt != null),
        assert(issues != null);

  factory _$_IssueRootResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_IssueRootResponseFromJson(json);

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
  final IssuesResponse issues;

  @override
  String toString() {
    return 'IssueRootResponse(id: $id, number: $number, url: $url, title: $title, description: $description, closedAt: $closedAt, issues: $issues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IssueRootResponse &&
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
                const DeepCollectionEquality().equals(other.issues, issues)));
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
      const DeepCollectionEquality().hash(issues);

  @override
  _$IssueRootResponseCopyWith<_IssueRootResponse> get copyWith =>
      __$IssueRootResponseCopyWithImpl<_IssueRootResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IssueRootResponseToJson(this);
  }
}

abstract class _IssueRootResponse implements IssueRootResponse {
  factory _IssueRootResponse(
      {@required String id,
      @required int number,
      @required String url,
      @required String title,
      @required String description,
      @required DateTime closedAt,
      @required IssuesResponse issues}) = _$_IssueRootResponse;

  factory _IssueRootResponse.fromJson(Map<String, dynamic> json) =
      _$_IssueRootResponse.fromJson;

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
  IssuesResponse get issues;
  @override
  _$IssueRootResponseCopyWith<_IssueRootResponse> get copyWith;
}

IssuesResponse _$IssuesResponseFromJson(Map<String, dynamic> json) {
  return _IssuesResponse.fromJson(json);
}

/// @nodoc
class _$IssuesResponseTearOff {
  const _$IssuesResponseTearOff();

// ignore: unused_element
  _IssuesResponse call(
      {@required int totalCount,
      @required PageInfo pageInfo,
      @required List<IssueNodeResponse> nodes}) {
    return _IssuesResponse(
      totalCount: totalCount,
      pageInfo: pageInfo,
      nodes: nodes,
    );
  }

// ignore: unused_element
  IssuesResponse fromJson(Map<String, Object> json) {
    return IssuesResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $IssuesResponse = _$IssuesResponseTearOff();

/// @nodoc
mixin _$IssuesResponse {
  int get totalCount;
  PageInfo get pageInfo;
  List<IssueNodeResponse> get nodes;

  Map<String, dynamic> toJson();
  $IssuesResponseCopyWith<IssuesResponse> get copyWith;
}

/// @nodoc
abstract class $IssuesResponseCopyWith<$Res> {
  factory $IssuesResponseCopyWith(
          IssuesResponse value, $Res Function(IssuesResponse) then) =
      _$IssuesResponseCopyWithImpl<$Res>;
  $Res call({int totalCount, PageInfo pageInfo, List<IssueNodeResponse> nodes});

  $PageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class _$IssuesResponseCopyWithImpl<$Res>
    implements $IssuesResponseCopyWith<$Res> {
  _$IssuesResponseCopyWithImpl(this._value, this._then);

  final IssuesResponse _value;
  // ignore: unused_field
  final $Res Function(IssuesResponse) _then;

  @override
  $Res call({
    Object totalCount = freezed,
    Object pageInfo = freezed,
    Object nodes = freezed,
  }) {
    return _then(_value.copyWith(
      totalCount: totalCount == freezed ? _value.totalCount : totalCount as int,
      pageInfo: pageInfo == freezed ? _value.pageInfo : pageInfo as PageInfo,
      nodes: nodes == freezed ? _value.nodes : nodes as List<IssueNodeResponse>,
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
abstract class _$IssuesResponseCopyWith<$Res>
    implements $IssuesResponseCopyWith<$Res> {
  factory _$IssuesResponseCopyWith(
          _IssuesResponse value, $Res Function(_IssuesResponse) then) =
      __$IssuesResponseCopyWithImpl<$Res>;
  @override
  $Res call({int totalCount, PageInfo pageInfo, List<IssueNodeResponse> nodes});

  @override
  $PageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class __$IssuesResponseCopyWithImpl<$Res>
    extends _$IssuesResponseCopyWithImpl<$Res>
    implements _$IssuesResponseCopyWith<$Res> {
  __$IssuesResponseCopyWithImpl(
      _IssuesResponse _value, $Res Function(_IssuesResponse) _then)
      : super(_value, (v) => _then(v as _IssuesResponse));

  @override
  _IssuesResponse get _value => super._value as _IssuesResponse;

  @override
  $Res call({
    Object totalCount = freezed,
    Object pageInfo = freezed,
    Object nodes = freezed,
  }) {
    return _then(_IssuesResponse(
      totalCount: totalCount == freezed ? _value.totalCount : totalCount as int,
      pageInfo: pageInfo == freezed ? _value.pageInfo : pageInfo as PageInfo,
      nodes: nodes == freezed ? _value.nodes : nodes as List<IssueNodeResponse>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_IssuesResponse implements _IssuesResponse {
  _$_IssuesResponse(
      {@required this.totalCount,
      @required this.pageInfo,
      @required this.nodes})
      : assert(totalCount != null),
        assert(pageInfo != null),
        assert(nodes != null);

  factory _$_IssuesResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_IssuesResponseFromJson(json);

  @override
  final int totalCount;
  @override
  final PageInfo pageInfo;
  @override
  final List<IssueNodeResponse> nodes;

  @override
  String toString() {
    return 'IssuesResponse(totalCount: $totalCount, pageInfo: $pageInfo, nodes: $nodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IssuesResponse &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageInfo, pageInfo) ||
                const DeepCollectionEquality()
                    .equals(other.pageInfo, pageInfo)) &&
            (identical(other.nodes, nodes) ||
                const DeepCollectionEquality().equals(other.nodes, nodes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageInfo) ^
      const DeepCollectionEquality().hash(nodes);

  @override
  _$IssuesResponseCopyWith<_IssuesResponse> get copyWith =>
      __$IssuesResponseCopyWithImpl<_IssuesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IssuesResponseToJson(this);
  }
}

abstract class _IssuesResponse implements IssuesResponse {
  factory _IssuesResponse(
      {@required int totalCount,
      @required PageInfo pageInfo,
      @required List<IssueNodeResponse> nodes}) = _$_IssuesResponse;

  factory _IssuesResponse.fromJson(Map<String, dynamic> json) =
      _$_IssuesResponse.fromJson;

  @override
  int get totalCount;
  @override
  PageInfo get pageInfo;
  @override
  List<IssueNodeResponse> get nodes;
  @override
  _$IssuesResponseCopyWith<_IssuesResponse> get copyWith;
}

IssueNodeResponse _$IssueNodeResponseFromJson(Map<String, dynamic> json) {
  return _IssueNodeResponse.fromJson(json);
}

/// @nodoc
class _$IssueNodeResponseTearOff {
  const _$IssueNodeResponseTearOff();

// ignore: unused_element
  _IssueNodeResponse call(
      {@required String url,
      @required String title,
      @required String body,
      @required LabelsResponse labels,
      @required CommentsResponse comments}) {
    return _IssueNodeResponse(
      url: url,
      title: title,
      body: body,
      labels: labels,
      comments: comments,
    );
  }

// ignore: unused_element
  IssueNodeResponse fromJson(Map<String, Object> json) {
    return IssueNodeResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $IssueNodeResponse = _$IssueNodeResponseTearOff();

/// @nodoc
mixin _$IssueNodeResponse {
  String get url;
  String get title;
  String get body;
  LabelsResponse get labels;
  CommentsResponse get comments;

  Map<String, dynamic> toJson();
  $IssueNodeResponseCopyWith<IssueNodeResponse> get copyWith;
}

/// @nodoc
abstract class $IssueNodeResponseCopyWith<$Res> {
  factory $IssueNodeResponseCopyWith(
          IssueNodeResponse value, $Res Function(IssueNodeResponse) then) =
      _$IssueNodeResponseCopyWithImpl<$Res>;
  $Res call(
      {String url,
      String title,
      String body,
      LabelsResponse labels,
      CommentsResponse comments});

  $LabelsResponseCopyWith<$Res> get labels;
  $CommentsResponseCopyWith<$Res> get comments;
}

/// @nodoc
class _$IssueNodeResponseCopyWithImpl<$Res>
    implements $IssueNodeResponseCopyWith<$Res> {
  _$IssueNodeResponseCopyWithImpl(this._value, this._then);

  final IssueNodeResponse _value;
  // ignore: unused_field
  final $Res Function(IssueNodeResponse) _then;

  @override
  $Res call({
    Object url = freezed,
    Object title = freezed,
    Object body = freezed,
    Object labels = freezed,
    Object comments = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed ? _value.url : url as String,
      title: title == freezed ? _value.title : title as String,
      body: body == freezed ? _value.body : body as String,
      labels: labels == freezed ? _value.labels : labels as LabelsResponse,
      comments:
          comments == freezed ? _value.comments : comments as CommentsResponse,
    ));
  }

  @override
  $LabelsResponseCopyWith<$Res> get labels {
    if (_value.labels == null) {
      return null;
    }
    return $LabelsResponseCopyWith<$Res>(_value.labels, (value) {
      return _then(_value.copyWith(labels: value));
    });
  }

  @override
  $CommentsResponseCopyWith<$Res> get comments {
    if (_value.comments == null) {
      return null;
    }
    return $CommentsResponseCopyWith<$Res>(_value.comments, (value) {
      return _then(_value.copyWith(comments: value));
    });
  }
}

/// @nodoc
abstract class _$IssueNodeResponseCopyWith<$Res>
    implements $IssueNodeResponseCopyWith<$Res> {
  factory _$IssueNodeResponseCopyWith(
          _IssueNodeResponse value, $Res Function(_IssueNodeResponse) then) =
      __$IssueNodeResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String url,
      String title,
      String body,
      LabelsResponse labels,
      CommentsResponse comments});

  @override
  $LabelsResponseCopyWith<$Res> get labels;
  @override
  $CommentsResponseCopyWith<$Res> get comments;
}

/// @nodoc
class __$IssueNodeResponseCopyWithImpl<$Res>
    extends _$IssueNodeResponseCopyWithImpl<$Res>
    implements _$IssueNodeResponseCopyWith<$Res> {
  __$IssueNodeResponseCopyWithImpl(
      _IssueNodeResponse _value, $Res Function(_IssueNodeResponse) _then)
      : super(_value, (v) => _then(v as _IssueNodeResponse));

  @override
  _IssueNodeResponse get _value => super._value as _IssueNodeResponse;

  @override
  $Res call({
    Object url = freezed,
    Object title = freezed,
    Object body = freezed,
    Object labels = freezed,
    Object comments = freezed,
  }) {
    return _then(_IssueNodeResponse(
      url: url == freezed ? _value.url : url as String,
      title: title == freezed ? _value.title : title as String,
      body: body == freezed ? _value.body : body as String,
      labels: labels == freezed ? _value.labels : labels as LabelsResponse,
      comments:
          comments == freezed ? _value.comments : comments as CommentsResponse,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_IssueNodeResponse implements _IssueNodeResponse {
  _$_IssueNodeResponse(
      {@required this.url,
      @required this.title,
      @required this.body,
      @required this.labels,
      @required this.comments})
      : assert(url != null),
        assert(title != null),
        assert(body != null),
        assert(labels != null),
        assert(comments != null);

  factory _$_IssueNodeResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_IssueNodeResponseFromJson(json);

  @override
  final String url;
  @override
  final String title;
  @override
  final String body;
  @override
  final LabelsResponse labels;
  @override
  final CommentsResponse comments;

  @override
  String toString() {
    return 'IssueNodeResponse(url: $url, title: $title, body: $body, labels: $labels, comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IssueNodeResponse &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.labels, labels) ||
                const DeepCollectionEquality().equals(other.labels, labels)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(labels) ^
      const DeepCollectionEquality().hash(comments);

  @override
  _$IssueNodeResponseCopyWith<_IssueNodeResponse> get copyWith =>
      __$IssueNodeResponseCopyWithImpl<_IssueNodeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IssueNodeResponseToJson(this);
  }
}

abstract class _IssueNodeResponse implements IssueNodeResponse {
  factory _IssueNodeResponse(
      {@required String url,
      @required String title,
      @required String body,
      @required LabelsResponse labels,
      @required CommentsResponse comments}) = _$_IssueNodeResponse;

  factory _IssueNodeResponse.fromJson(Map<String, dynamic> json) =
      _$_IssueNodeResponse.fromJson;

  @override
  String get url;
  @override
  String get title;
  @override
  String get body;
  @override
  LabelsResponse get labels;
  @override
  CommentsResponse get comments;
  @override
  _$IssueNodeResponseCopyWith<_IssueNodeResponse> get copyWith;
}

LabelsResponse _$LabelsResponseFromJson(Map<String, dynamic> json) {
  return _LabelsResponse.fromJson(json);
}

/// @nodoc
class _$LabelsResponseTearOff {
  const _$LabelsResponseTearOff();

// ignore: unused_element
  _LabelsResponse call({@required List<LabelNodeResponse> nodes}) {
    return _LabelsResponse(
      nodes: nodes,
    );
  }

// ignore: unused_element
  LabelsResponse fromJson(Map<String, Object> json) {
    return LabelsResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LabelsResponse = _$LabelsResponseTearOff();

/// @nodoc
mixin _$LabelsResponse {
  List<LabelNodeResponse> get nodes;

  Map<String, dynamic> toJson();
  $LabelsResponseCopyWith<LabelsResponse> get copyWith;
}

/// @nodoc
abstract class $LabelsResponseCopyWith<$Res> {
  factory $LabelsResponseCopyWith(
          LabelsResponse value, $Res Function(LabelsResponse) then) =
      _$LabelsResponseCopyWithImpl<$Res>;
  $Res call({List<LabelNodeResponse> nodes});
}

/// @nodoc
class _$LabelsResponseCopyWithImpl<$Res>
    implements $LabelsResponseCopyWith<$Res> {
  _$LabelsResponseCopyWithImpl(this._value, this._then);

  final LabelsResponse _value;
  // ignore: unused_field
  final $Res Function(LabelsResponse) _then;

  @override
  $Res call({
    Object nodes = freezed,
  }) {
    return _then(_value.copyWith(
      nodes: nodes == freezed ? _value.nodes : nodes as List<LabelNodeResponse>,
    ));
  }
}

/// @nodoc
abstract class _$LabelsResponseCopyWith<$Res>
    implements $LabelsResponseCopyWith<$Res> {
  factory _$LabelsResponseCopyWith(
          _LabelsResponse value, $Res Function(_LabelsResponse) then) =
      __$LabelsResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<LabelNodeResponse> nodes});
}

/// @nodoc
class __$LabelsResponseCopyWithImpl<$Res>
    extends _$LabelsResponseCopyWithImpl<$Res>
    implements _$LabelsResponseCopyWith<$Res> {
  __$LabelsResponseCopyWithImpl(
      _LabelsResponse _value, $Res Function(_LabelsResponse) _then)
      : super(_value, (v) => _then(v as _LabelsResponse));

  @override
  _LabelsResponse get _value => super._value as _LabelsResponse;

  @override
  $Res call({
    Object nodes = freezed,
  }) {
    return _then(_LabelsResponse(
      nodes: nodes == freezed ? _value.nodes : nodes as List<LabelNodeResponse>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LabelsResponse implements _LabelsResponse {
  _$_LabelsResponse({@required this.nodes}) : assert(nodes != null);

  factory _$_LabelsResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_LabelsResponseFromJson(json);

  @override
  final List<LabelNodeResponse> nodes;

  @override
  String toString() {
    return 'LabelsResponse(nodes: $nodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LabelsResponse &&
            (identical(other.nodes, nodes) ||
                const DeepCollectionEquality().equals(other.nodes, nodes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nodes);

  @override
  _$LabelsResponseCopyWith<_LabelsResponse> get copyWith =>
      __$LabelsResponseCopyWithImpl<_LabelsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LabelsResponseToJson(this);
  }
}

abstract class _LabelsResponse implements LabelsResponse {
  factory _LabelsResponse({@required List<LabelNodeResponse> nodes}) =
      _$_LabelsResponse;

  factory _LabelsResponse.fromJson(Map<String, dynamic> json) =
      _$_LabelsResponse.fromJson;

  @override
  List<LabelNodeResponse> get nodes;
  @override
  _$LabelsResponseCopyWith<_LabelsResponse> get copyWith;
}

LabelNodeResponse _$LabelNodeResponseFromJson(Map<String, dynamic> json) {
  return _LabelNodeResponse.fromJson(json);
}

/// @nodoc
class _$LabelNodeResponseTearOff {
  const _$LabelNodeResponseTearOff();

// ignore: unused_element
  _LabelNodeResponse call(
      {@required String name,
      @required String description,
      @required String color}) {
    return _LabelNodeResponse(
      name: name,
      description: description,
      color: color,
    );
  }

// ignore: unused_element
  LabelNodeResponse fromJson(Map<String, Object> json) {
    return LabelNodeResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LabelNodeResponse = _$LabelNodeResponseTearOff();

/// @nodoc
mixin _$LabelNodeResponse {
  String get name;
  String get description;
  String get color;

  Map<String, dynamic> toJson();
  $LabelNodeResponseCopyWith<LabelNodeResponse> get copyWith;
}

/// @nodoc
abstract class $LabelNodeResponseCopyWith<$Res> {
  factory $LabelNodeResponseCopyWith(
          LabelNodeResponse value, $Res Function(LabelNodeResponse) then) =
      _$LabelNodeResponseCopyWithImpl<$Res>;
  $Res call({String name, String description, String color});
}

/// @nodoc
class _$LabelNodeResponseCopyWithImpl<$Res>
    implements $LabelNodeResponseCopyWith<$Res> {
  _$LabelNodeResponseCopyWithImpl(this._value, this._then);

  final LabelNodeResponse _value;
  // ignore: unused_field
  final $Res Function(LabelNodeResponse) _then;

  @override
  $Res call({
    Object name = freezed,
    Object description = freezed,
    Object color = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      color: color == freezed ? _value.color : color as String,
    ));
  }
}

/// @nodoc
abstract class _$LabelNodeResponseCopyWith<$Res>
    implements $LabelNodeResponseCopyWith<$Res> {
  factory _$LabelNodeResponseCopyWith(
          _LabelNodeResponse value, $Res Function(_LabelNodeResponse) then) =
      __$LabelNodeResponseCopyWithImpl<$Res>;
  @override
  $Res call({String name, String description, String color});
}

/// @nodoc
class __$LabelNodeResponseCopyWithImpl<$Res>
    extends _$LabelNodeResponseCopyWithImpl<$Res>
    implements _$LabelNodeResponseCopyWith<$Res> {
  __$LabelNodeResponseCopyWithImpl(
      _LabelNodeResponse _value, $Res Function(_LabelNodeResponse) _then)
      : super(_value, (v) => _then(v as _LabelNodeResponse));

  @override
  _LabelNodeResponse get _value => super._value as _LabelNodeResponse;

  @override
  $Res call({
    Object name = freezed,
    Object description = freezed,
    Object color = freezed,
  }) {
    return _then(_LabelNodeResponse(
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      color: color == freezed ? _value.color : color as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LabelNodeResponse implements _LabelNodeResponse {
  _$_LabelNodeResponse(
      {@required this.name, @required this.description, @required this.color})
      : assert(name != null),
        assert(description != null),
        assert(color != null);

  factory _$_LabelNodeResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_LabelNodeResponseFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String color;

  @override
  String toString() {
    return 'LabelNodeResponse(name: $name, description: $description, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LabelNodeResponse &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(color);

  @override
  _$LabelNodeResponseCopyWith<_LabelNodeResponse> get copyWith =>
      __$LabelNodeResponseCopyWithImpl<_LabelNodeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LabelNodeResponseToJson(this);
  }
}

abstract class _LabelNodeResponse implements LabelNodeResponse {
  factory _LabelNodeResponse(
      {@required String name,
      @required String description,
      @required String color}) = _$_LabelNodeResponse;

  factory _LabelNodeResponse.fromJson(Map<String, dynamic> json) =
      _$_LabelNodeResponse.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get color;
  @override
  _$LabelNodeResponseCopyWith<_LabelNodeResponse> get copyWith;
}

CommentsResponse _$CommentsResponseFromJson(Map<String, dynamic> json) {
  return _CommentsResponse.fromJson(json);
}

/// @nodoc
class _$CommentsResponseTearOff {
  const _$CommentsResponseTearOff();

// ignore: unused_element
  _CommentsResponse call(
      {@required int totalCount,
      @required PageInfo pageInfo,
      @required List<CommentNodeResponse> nodes}) {
    return _CommentsResponse(
      totalCount: totalCount,
      pageInfo: pageInfo,
      nodes: nodes,
    );
  }

// ignore: unused_element
  CommentsResponse fromJson(Map<String, Object> json) {
    return CommentsResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CommentsResponse = _$CommentsResponseTearOff();

/// @nodoc
mixin _$CommentsResponse {
  int get totalCount;
  PageInfo get pageInfo;
  List<CommentNodeResponse> get nodes;

  Map<String, dynamic> toJson();
  $CommentsResponseCopyWith<CommentsResponse> get copyWith;
}

/// @nodoc
abstract class $CommentsResponseCopyWith<$Res> {
  factory $CommentsResponseCopyWith(
          CommentsResponse value, $Res Function(CommentsResponse) then) =
      _$CommentsResponseCopyWithImpl<$Res>;
  $Res call(
      {int totalCount, PageInfo pageInfo, List<CommentNodeResponse> nodes});

  $PageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class _$CommentsResponseCopyWithImpl<$Res>
    implements $CommentsResponseCopyWith<$Res> {
  _$CommentsResponseCopyWithImpl(this._value, this._then);

  final CommentsResponse _value;
  // ignore: unused_field
  final $Res Function(CommentsResponse) _then;

  @override
  $Res call({
    Object totalCount = freezed,
    Object pageInfo = freezed,
    Object nodes = freezed,
  }) {
    return _then(_value.copyWith(
      totalCount: totalCount == freezed ? _value.totalCount : totalCount as int,
      pageInfo: pageInfo == freezed ? _value.pageInfo : pageInfo as PageInfo,
      nodes:
          nodes == freezed ? _value.nodes : nodes as List<CommentNodeResponse>,
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
abstract class _$CommentsResponseCopyWith<$Res>
    implements $CommentsResponseCopyWith<$Res> {
  factory _$CommentsResponseCopyWith(
          _CommentsResponse value, $Res Function(_CommentsResponse) then) =
      __$CommentsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int totalCount, PageInfo pageInfo, List<CommentNodeResponse> nodes});

  @override
  $PageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class __$CommentsResponseCopyWithImpl<$Res>
    extends _$CommentsResponseCopyWithImpl<$Res>
    implements _$CommentsResponseCopyWith<$Res> {
  __$CommentsResponseCopyWithImpl(
      _CommentsResponse _value, $Res Function(_CommentsResponse) _then)
      : super(_value, (v) => _then(v as _CommentsResponse));

  @override
  _CommentsResponse get _value => super._value as _CommentsResponse;

  @override
  $Res call({
    Object totalCount = freezed,
    Object pageInfo = freezed,
    Object nodes = freezed,
  }) {
    return _then(_CommentsResponse(
      totalCount: totalCount == freezed ? _value.totalCount : totalCount as int,
      pageInfo: pageInfo == freezed ? _value.pageInfo : pageInfo as PageInfo,
      nodes:
          nodes == freezed ? _value.nodes : nodes as List<CommentNodeResponse>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CommentsResponse implements _CommentsResponse {
  _$_CommentsResponse(
      {@required this.totalCount,
      @required this.pageInfo,
      @required this.nodes})
      : assert(totalCount != null),
        assert(pageInfo != null),
        assert(nodes != null);

  factory _$_CommentsResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_CommentsResponseFromJson(json);

  @override
  final int totalCount;
  @override
  final PageInfo pageInfo;
  @override
  final List<CommentNodeResponse> nodes;

  @override
  String toString() {
    return 'CommentsResponse(totalCount: $totalCount, pageInfo: $pageInfo, nodes: $nodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentsResponse &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageInfo, pageInfo) ||
                const DeepCollectionEquality()
                    .equals(other.pageInfo, pageInfo)) &&
            (identical(other.nodes, nodes) ||
                const DeepCollectionEquality().equals(other.nodes, nodes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageInfo) ^
      const DeepCollectionEquality().hash(nodes);

  @override
  _$CommentsResponseCopyWith<_CommentsResponse> get copyWith =>
      __$CommentsResponseCopyWithImpl<_CommentsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommentsResponseToJson(this);
  }
}

abstract class _CommentsResponse implements CommentsResponse {
  factory _CommentsResponse(
      {@required int totalCount,
      @required PageInfo pageInfo,
      @required List<CommentNodeResponse> nodes}) = _$_CommentsResponse;

  factory _CommentsResponse.fromJson(Map<String, dynamic> json) =
      _$_CommentsResponse.fromJson;

  @override
  int get totalCount;
  @override
  PageInfo get pageInfo;
  @override
  List<CommentNodeResponse> get nodes;
  @override
  _$CommentsResponseCopyWith<_CommentsResponse> get copyWith;
}

CommentNodeResponse _$CommentNodeResponseFromJson(Map<String, dynamic> json) {
  return _CommentNodeResponse.fromJson(json);
}

/// @nodoc
class _$CommentNodeResponseTearOff {
  const _$CommentNodeResponseTearOff();

// ignore: unused_element
  _CommentNodeResponse call(
      {@required String body,
      @required DateTime publishedAt,
      @required AuthorResponse author}) {
    return _CommentNodeResponse(
      body: body,
      publishedAt: publishedAt,
      author: author,
    );
  }

// ignore: unused_element
  CommentNodeResponse fromJson(Map<String, Object> json) {
    return CommentNodeResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CommentNodeResponse = _$CommentNodeResponseTearOff();

/// @nodoc
mixin _$CommentNodeResponse {
  String get body;
  DateTime get publishedAt;
  AuthorResponse get author;

  Map<String, dynamic> toJson();
  $CommentNodeResponseCopyWith<CommentNodeResponse> get copyWith;
}

/// @nodoc
abstract class $CommentNodeResponseCopyWith<$Res> {
  factory $CommentNodeResponseCopyWith(
          CommentNodeResponse value, $Res Function(CommentNodeResponse) then) =
      _$CommentNodeResponseCopyWithImpl<$Res>;
  $Res call({String body, DateTime publishedAt, AuthorResponse author});

  $AuthorResponseCopyWith<$Res> get author;
}

/// @nodoc
class _$CommentNodeResponseCopyWithImpl<$Res>
    implements $CommentNodeResponseCopyWith<$Res> {
  _$CommentNodeResponseCopyWithImpl(this._value, this._then);

  final CommentNodeResponse _value;
  // ignore: unused_field
  final $Res Function(CommentNodeResponse) _then;

  @override
  $Res call({
    Object body = freezed,
    Object publishedAt = freezed,
    Object author = freezed,
  }) {
    return _then(_value.copyWith(
      body: body == freezed ? _value.body : body as String,
      publishedAt:
          publishedAt == freezed ? _value.publishedAt : publishedAt as DateTime,
      author: author == freezed ? _value.author : author as AuthorResponse,
    ));
  }

  @override
  $AuthorResponseCopyWith<$Res> get author {
    if (_value.author == null) {
      return null;
    }
    return $AuthorResponseCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value));
    });
  }
}

/// @nodoc
abstract class _$CommentNodeResponseCopyWith<$Res>
    implements $CommentNodeResponseCopyWith<$Res> {
  factory _$CommentNodeResponseCopyWith(_CommentNodeResponse value,
          $Res Function(_CommentNodeResponse) then) =
      __$CommentNodeResponseCopyWithImpl<$Res>;
  @override
  $Res call({String body, DateTime publishedAt, AuthorResponse author});

  @override
  $AuthorResponseCopyWith<$Res> get author;
}

/// @nodoc
class __$CommentNodeResponseCopyWithImpl<$Res>
    extends _$CommentNodeResponseCopyWithImpl<$Res>
    implements _$CommentNodeResponseCopyWith<$Res> {
  __$CommentNodeResponseCopyWithImpl(
      _CommentNodeResponse _value, $Res Function(_CommentNodeResponse) _then)
      : super(_value, (v) => _then(v as _CommentNodeResponse));

  @override
  _CommentNodeResponse get _value => super._value as _CommentNodeResponse;

  @override
  $Res call({
    Object body = freezed,
    Object publishedAt = freezed,
    Object author = freezed,
  }) {
    return _then(_CommentNodeResponse(
      body: body == freezed ? _value.body : body as String,
      publishedAt:
          publishedAt == freezed ? _value.publishedAt : publishedAt as DateTime,
      author: author == freezed ? _value.author : author as AuthorResponse,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CommentNodeResponse implements _CommentNodeResponse {
  _$_CommentNodeResponse(
      {@required this.body, @required this.publishedAt, @required this.author})
      : assert(body != null),
        assert(publishedAt != null),
        assert(author != null);

  factory _$_CommentNodeResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_CommentNodeResponseFromJson(json);

  @override
  final String body;
  @override
  final DateTime publishedAt;
  @override
  final AuthorResponse author;

  @override
  String toString() {
    return 'CommentNodeResponse(body: $body, publishedAt: $publishedAt, author: $author)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentNodeResponse &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.publishedAt, publishedAt) ||
                const DeepCollectionEquality()
                    .equals(other.publishedAt, publishedAt)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(publishedAt) ^
      const DeepCollectionEquality().hash(author);

  @override
  _$CommentNodeResponseCopyWith<_CommentNodeResponse> get copyWith =>
      __$CommentNodeResponseCopyWithImpl<_CommentNodeResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommentNodeResponseToJson(this);
  }
}

abstract class _CommentNodeResponse implements CommentNodeResponse {
  factory _CommentNodeResponse(
      {@required String body,
      @required DateTime publishedAt,
      @required AuthorResponse author}) = _$_CommentNodeResponse;

  factory _CommentNodeResponse.fromJson(Map<String, dynamic> json) =
      _$_CommentNodeResponse.fromJson;

  @override
  String get body;
  @override
  DateTime get publishedAt;
  @override
  AuthorResponse get author;
  @override
  _$CommentNodeResponseCopyWith<_CommentNodeResponse> get copyWith;
}

AuthorResponse _$AuthorResponseFromJson(Map<String, dynamic> json) {
  return _AuthorResponse.fromJson(json);
}

/// @nodoc
class _$AuthorResponseTearOff {
  const _$AuthorResponseTearOff();

// ignore: unused_element
  _AuthorResponse call(
      {@required String login,
      @required String url,
      @required String avatarUrl}) {
    return _AuthorResponse(
      login: login,
      url: url,
      avatarUrl: avatarUrl,
    );
  }

// ignore: unused_element
  AuthorResponse fromJson(Map<String, Object> json) {
    return AuthorResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AuthorResponse = _$AuthorResponseTearOff();

/// @nodoc
mixin _$AuthorResponse {
  String get login;
  String get url;
  String get avatarUrl;

  Map<String, dynamic> toJson();
  $AuthorResponseCopyWith<AuthorResponse> get copyWith;
}

/// @nodoc
abstract class $AuthorResponseCopyWith<$Res> {
  factory $AuthorResponseCopyWith(
          AuthorResponse value, $Res Function(AuthorResponse) then) =
      _$AuthorResponseCopyWithImpl<$Res>;
  $Res call({String login, String url, String avatarUrl});
}

/// @nodoc
class _$AuthorResponseCopyWithImpl<$Res>
    implements $AuthorResponseCopyWith<$Res> {
  _$AuthorResponseCopyWithImpl(this._value, this._then);

  final AuthorResponse _value;
  // ignore: unused_field
  final $Res Function(AuthorResponse) _then;

  @override
  $Res call({
    Object login = freezed,
    Object url = freezed,
    Object avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
      login: login == freezed ? _value.login : login as String,
      url: url == freezed ? _value.url : url as String,
      avatarUrl: avatarUrl == freezed ? _value.avatarUrl : avatarUrl as String,
    ));
  }
}

/// @nodoc
abstract class _$AuthorResponseCopyWith<$Res>
    implements $AuthorResponseCopyWith<$Res> {
  factory _$AuthorResponseCopyWith(
          _AuthorResponse value, $Res Function(_AuthorResponse) then) =
      __$AuthorResponseCopyWithImpl<$Res>;
  @override
  $Res call({String login, String url, String avatarUrl});
}

/// @nodoc
class __$AuthorResponseCopyWithImpl<$Res>
    extends _$AuthorResponseCopyWithImpl<$Res>
    implements _$AuthorResponseCopyWith<$Res> {
  __$AuthorResponseCopyWithImpl(
      _AuthorResponse _value, $Res Function(_AuthorResponse) _then)
      : super(_value, (v) => _then(v as _AuthorResponse));

  @override
  _AuthorResponse get _value => super._value as _AuthorResponse;

  @override
  $Res call({
    Object login = freezed,
    Object url = freezed,
    Object avatarUrl = freezed,
  }) {
    return _then(_AuthorResponse(
      login: login == freezed ? _value.login : login as String,
      url: url == freezed ? _value.url : url as String,
      avatarUrl: avatarUrl == freezed ? _value.avatarUrl : avatarUrl as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AuthorResponse implements _AuthorResponse {
  _$_AuthorResponse(
      {@required this.login, @required this.url, @required this.avatarUrl})
      : assert(login != null),
        assert(url != null),
        assert(avatarUrl != null);

  factory _$_AuthorResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_AuthorResponseFromJson(json);

  @override
  final String login;
  @override
  final String url;
  @override
  final String avatarUrl;

  @override
  String toString() {
    return 'AuthorResponse(login: $login, url: $url, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthorResponse &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(avatarUrl);

  @override
  _$AuthorResponseCopyWith<_AuthorResponse> get copyWith =>
      __$AuthorResponseCopyWithImpl<_AuthorResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AuthorResponseToJson(this);
  }
}

abstract class _AuthorResponse implements AuthorResponse {
  factory _AuthorResponse(
      {@required String login,
      @required String url,
      @required String avatarUrl}) = _$_AuthorResponse;

  factory _AuthorResponse.fromJson(Map<String, dynamic> json) =
      _$_AuthorResponse.fromJson;

  @override
  String get login;
  @override
  String get url;
  @override
  String get avatarUrl;
  @override
  _$AuthorResponseCopyWith<_AuthorResponse> get copyWith;
}

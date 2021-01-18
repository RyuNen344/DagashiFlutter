// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'issue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$IssueTearOff {
  const _$IssueTearOff();

// ignore: unused_element
  _Issue call(
      {@required String url,
      @required String title,
      @required String body,
      @required List<Label> labels,
      @required List<Comment> comments}) {
    return _Issue(
      url: url,
      title: title,
      body: body,
      labels: labels,
      comments: comments,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Issue = _$IssueTearOff();

/// @nodoc
mixin _$Issue {
  String get url;
  String get title;
  String get body;
  List<Label> get labels;
  List<Comment> get comments;

  @JsonKey(ignore: true)
  $IssueCopyWith<Issue> get copyWith;
}

/// @nodoc
abstract class $IssueCopyWith<$Res> {
  factory $IssueCopyWith(Issue value, $Res Function(Issue) then) =
      _$IssueCopyWithImpl<$Res>;
  $Res call(
      {String url,
      String title,
      String body,
      List<Label> labels,
      List<Comment> comments});
}

/// @nodoc
class _$IssueCopyWithImpl<$Res> implements $IssueCopyWith<$Res> {
  _$IssueCopyWithImpl(this._value, this._then);

  final Issue _value;
  // ignore: unused_field
  final $Res Function(Issue) _then;

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
      labels: labels == freezed ? _value.labels : labels as List<Label>,
      comments:
          comments == freezed ? _value.comments : comments as List<Comment>,
    ));
  }
}

/// @nodoc
abstract class _$IssueCopyWith<$Res> implements $IssueCopyWith<$Res> {
  factory _$IssueCopyWith(_Issue value, $Res Function(_Issue) then) =
      __$IssueCopyWithImpl<$Res>;
  @override
  $Res call(
      {String url,
      String title,
      String body,
      List<Label> labels,
      List<Comment> comments});
}

/// @nodoc
class __$IssueCopyWithImpl<$Res> extends _$IssueCopyWithImpl<$Res>
    implements _$IssueCopyWith<$Res> {
  __$IssueCopyWithImpl(_Issue _value, $Res Function(_Issue) _then)
      : super(_value, (v) => _then(v as _Issue));

  @override
  _Issue get _value => super._value as _Issue;

  @override
  $Res call({
    Object url = freezed,
    Object title = freezed,
    Object body = freezed,
    Object labels = freezed,
    Object comments = freezed,
  }) {
    return _then(_Issue(
      url: url == freezed ? _value.url : url as String,
      title: title == freezed ? _value.title : title as String,
      body: body == freezed ? _value.body : body as String,
      labels: labels == freezed ? _value.labels : labels as List<Label>,
      comments:
          comments == freezed ? _value.comments : comments as List<Comment>,
    ));
  }
}

/// @nodoc
class _$_Issue implements _Issue {
  _$_Issue(
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

  @override
  final String url;
  @override
  final String title;
  @override
  final String body;
  @override
  final List<Label> labels;
  @override
  final List<Comment> comments;

  @override
  String toString() {
    return 'Issue(url: $url, title: $title, body: $body, labels: $labels, comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Issue &&
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

  @JsonKey(ignore: true)
  @override
  _$IssueCopyWith<_Issue> get copyWith =>
      __$IssueCopyWithImpl<_Issue>(this, _$identity);
}

abstract class _Issue implements Issue {
  factory _Issue(
      {@required String url,
      @required String title,
      @required String body,
      @required List<Label> labels,
      @required List<Comment> comments}) = _$_Issue;

  @override
  String get url;
  @override
  String get title;
  @override
  String get body;
  @override
  List<Label> get labels;
  @override
  List<Comment> get comments;
  @override
  @JsonKey(ignore: true)
  _$IssueCopyWith<_Issue> get copyWith;
}

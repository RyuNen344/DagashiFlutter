// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'summary_issue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SummaryIssueTearOff {
  const _$SummaryIssueTearOff();

// ignore: unused_element
  _SummaryIssue call({@required String title}) {
    return _SummaryIssue(
      title: title,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SummaryIssue = _$SummaryIssueTearOff();

/// @nodoc
mixin _$SummaryIssue {
  String get title;

  $SummaryIssueCopyWith<SummaryIssue> get copyWith;
}

/// @nodoc
abstract class $SummaryIssueCopyWith<$Res> {
  factory $SummaryIssueCopyWith(
          SummaryIssue value, $Res Function(SummaryIssue) then) =
      _$SummaryIssueCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class _$SummaryIssueCopyWithImpl<$Res> implements $SummaryIssueCopyWith<$Res> {
  _$SummaryIssueCopyWithImpl(this._value, this._then);

  final SummaryIssue _value;
  // ignore: unused_field
  final $Res Function(SummaryIssue) _then;

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
abstract class _$SummaryIssueCopyWith<$Res>
    implements $SummaryIssueCopyWith<$Res> {
  factory _$SummaryIssueCopyWith(
          _SummaryIssue value, $Res Function(_SummaryIssue) then) =
      __$SummaryIssueCopyWithImpl<$Res>;
  @override
  $Res call({String title});
}

/// @nodoc
class __$SummaryIssueCopyWithImpl<$Res> extends _$SummaryIssueCopyWithImpl<$Res>
    implements _$SummaryIssueCopyWith<$Res> {
  __$SummaryIssueCopyWithImpl(
      _SummaryIssue _value, $Res Function(_SummaryIssue) _then)
      : super(_value, (v) => _then(v as _SummaryIssue));

  @override
  _SummaryIssue get _value => super._value as _SummaryIssue;

  @override
  $Res call({
    Object title = freezed,
  }) {
    return _then(_SummaryIssue(
      title: title == freezed ? _value.title : title as String,
    ));
  }
}

/// @nodoc
class _$_SummaryIssue implements _SummaryIssue {
  _$_SummaryIssue({@required this.title}) : assert(title != null);

  @override
  final String title;

  @override
  String toString() {
    return 'SummaryIssue(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SummaryIssue &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @override
  _$SummaryIssueCopyWith<_SummaryIssue> get copyWith =>
      __$SummaryIssueCopyWithImpl<_SummaryIssue>(this, _$identity);
}

abstract class _SummaryIssue implements SummaryIssue {
  factory _SummaryIssue({@required String title}) = _$_SummaryIssue;

  @override
  String get title;
  @override
  _$SummaryIssueCopyWith<_SummaryIssue> get copyWith;
}

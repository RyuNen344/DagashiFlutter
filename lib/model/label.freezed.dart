// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'label.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LabelTearOff {
  const _$LabelTearOff();

// ignore: unused_element
  _Label call(
      {@required String name,
      @required String description,
      @required String color}) {
    return _Label(
      name: name,
      description: description,
      color: color,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Label = _$LabelTearOff();

/// @nodoc
mixin _$Label {
  String get name;
  String get description;
  String get color;

  @JsonKey(ignore: true)
  $LabelCopyWith<Label> get copyWith;
}

/// @nodoc
abstract class $LabelCopyWith<$Res> {
  factory $LabelCopyWith(Label value, $Res Function(Label) then) =
      _$LabelCopyWithImpl<$Res>;
  $Res call({String name, String description, String color});
}

/// @nodoc
class _$LabelCopyWithImpl<$Res> implements $LabelCopyWith<$Res> {
  _$LabelCopyWithImpl(this._value, this._then);

  final Label _value;
  // ignore: unused_field
  final $Res Function(Label) _then;

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
abstract class _$LabelCopyWith<$Res> implements $LabelCopyWith<$Res> {
  factory _$LabelCopyWith(_Label value, $Res Function(_Label) then) =
      __$LabelCopyWithImpl<$Res>;
  @override
  $Res call({String name, String description, String color});
}

/// @nodoc
class __$LabelCopyWithImpl<$Res> extends _$LabelCopyWithImpl<$Res>
    implements _$LabelCopyWith<$Res> {
  __$LabelCopyWithImpl(_Label _value, $Res Function(_Label) _then)
      : super(_value, (v) => _then(v as _Label));

  @override
  _Label get _value => super._value as _Label;

  @override
  $Res call({
    Object name = freezed,
    Object description = freezed,
    Object color = freezed,
  }) {
    return _then(_Label(
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      color: color == freezed ? _value.color : color as String,
    ));
  }
}

/// @nodoc
class _$_Label implements _Label {
  _$_Label(
      {@required this.name, @required this.description, @required this.color})
      : assert(name != null),
        assert(description != null),
        assert(color != null);

  @override
  final String name;
  @override
  final String description;
  @override
  final String color;

  @override
  String toString() {
    return 'Label(name: $name, description: $description, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Label &&
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

  @JsonKey(ignore: true)
  @override
  _$LabelCopyWith<_Label> get copyWith =>
      __$LabelCopyWithImpl<_Label>(this, _$identity);
}

abstract class _Label implements Label {
  factory _Label(
      {@required String name,
      @required String description,
      @required String color}) = _$_Label;

  @override
  String get name;
  @override
  String get description;
  @override
  String get color;
  @override
  @JsonKey(ignore: true)
  _$LabelCopyWith<_Label> get copyWith;
}

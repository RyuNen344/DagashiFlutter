import 'package:freezed_annotation/freezed_annotation.dart';

part 'label.freezed.dart';

@freezed
abstract class Label with _$Label {
  factory Label(
      {@required String name,
        @required String description,
        @required String color}) = _Label;
}

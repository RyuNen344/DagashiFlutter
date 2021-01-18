import 'package:freezed_annotation/freezed_annotation.dart';

part 'author.freezed.dart';

@freezed
abstract class Author with _$Author {
  factory Author(
      {@required String login,
        @required String url,
        @required String avatarUrl}) = _Author;
}

import 'package:freezed_annotation/freezed_annotation.dart';

import 'author.dart';

part 'comment.freezed.dart';

@freezed
abstract class Comment with _$Comment {
  factory Comment(
      {@required String body,
        @required DateTime publishedAt,
        @required Author author}) = _Comment;
}

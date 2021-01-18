import 'package:freezed_annotation/freezed_annotation.dart';

import 'comment.dart';
import 'label.dart';

part 'issue.freezed.dart';

@freezed
abstract class Issue with _$Issue {
  factory Issue(
      {@required String url,
      @required String title,
      @required String body,
      @required List<Label> labels,
      @required List<Comment> comments}) = _Issue;
}

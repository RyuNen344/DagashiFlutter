import 'dart:async';

import 'entity/combined/issue_with_label_and_comment.dart';

abstract class IssueDatabase {
  Stream<List<IssueWithLabelAndComment>> issueEntity(int number);

  Future<void> saveIssue(List<IssueWithLabelAndComment> entity);
}

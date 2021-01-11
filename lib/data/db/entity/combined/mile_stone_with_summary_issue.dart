import 'package:dagashi_flutter/data/db/entity/mile_stone_entity.dart';
import 'package:dagashi_flutter/data/db/entity/summary_issue_entity.dart';

class MileStoneWithSummaryIssue {
  final MileStoneEntity mileStoneEntity;

  final List<SummaryIssueEntity> issues;

  MileStoneWithSummaryIssue(this.mileStoneEntity, this.issues);
}

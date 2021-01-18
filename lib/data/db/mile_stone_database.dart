import 'dart:async';

import 'entity/combined/mile_stone_with_summary_issue.dart';

abstract class MileStoneDatabase {
  Stream<List<MileStoneWithSummaryIssue>> mileStoneEntity();

  Future<void> saveMileStone(List<MileStoneWithSummaryIssue> entity);
}

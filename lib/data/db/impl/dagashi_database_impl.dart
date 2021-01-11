import 'package:dagashi_flutter/data/db/dagashi_database.dart';
import 'package:dagashi_flutter/data/db/entity/combined/mile_stone_with_summary_issue.dart';
import 'package:dagashi_flutter/data/db/entity/mile_stone_entity.dart';
import 'package:dagashi_flutter/data/db/entity/summary_issue_entity.dart';
import 'package:dagashi_flutter/data/db/mile_stone_database.dart';
import 'package:flutter/material.dart';

class DagashiDatabaseImpl implements MileStoneDatabase {
  DagashiDatabaseImpl({@required DagashiDatabase dagashiDatabase})
      : this._dagashiDatabase = dagashiDatabase;

  final DagashiDatabase _dagashiDatabase;

  @override
  Stream<List<MileStoneWithSummaryIssue>> mileStoneEntity() {
    return _dagashiDatabase.mileStoneDao
        .select()
        .asyncMap(_mapWithSummaryIssue);
  }

  Future<List<MileStoneWithSummaryIssue>> _mapWithSummaryIssue(
      List<MileStoneEntity> mileStones) async {
    List<SummaryIssueEntity> summaryIssue =
        await _dagashiDatabase.summaryIssueDao.select().single;
    return mileStones
        .map((mileStone) => MileStoneWithSummaryIssue(mileStone,
            summaryIssue.where((issue) => issue.mileStoneId == mileStone.id)))
        .toList();
  }

  @override
  Future<void> saveMileStone(List<MileStoneWithSummaryIssue> entity) async {
    _dagashiDatabase.mileStoneDao
        .insertList(entity.map((e) => e.mileStoneEntity).toList());
    _dagashiDatabase.summaryIssueDao
        .insertList(entity.expand((e) => e.issues).toList());
  }
}

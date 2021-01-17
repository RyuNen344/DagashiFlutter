import 'package:dagashi_flutter/data/db/dagashi_database.dart';
import 'package:dagashi_flutter/data/db/database_helper.dart';
import 'package:dagashi_flutter/data/db/entity/combined/mile_stone_with_summary_issue.dart';
import 'package:dagashi_flutter/data/db/entity/mile_stone_entity.dart';
import 'package:dagashi_flutter/data/db/entity/summary_issue_entity.dart';
import 'package:dagashi_flutter/data/db/mile_stone_database.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class DagashiDatabaseImpl implements MileStoneDatabase {
  DagashiDatabaseImpl({@required DatabaseHelper databaseHelper})
      : this._databaseHelper = databaseHelper;

  final DatabaseHelper _databaseHelper;

  @override
  Stream<List<MileStoneWithSummaryIssue>> mileStoneEntity() {
    return _databaseHelper.database.asStream().flatMap((value) {
      return value.mileStoneDao.select().asyncMap(_mapWithSummaryIssue);
    });
  }

  Future<List<MileStoneWithSummaryIssue>> _mapWithSummaryIssue(
      List<MileStoneEntity> mileStones) async {
    DagashiDatabase database = await _databaseHelper.database;
    // TODO: queryでfilterしちゃうか検討
    List<SummaryIssueEntity> summaryIssue =
        await database.summaryIssueDao.select();
    return mileStones
        .map((mileStone) => MileStoneWithSummaryIssue(
            mileStone,
            summaryIssue
                .where((issue) => issue.mileStoneId == mileStone.id)
                .toList()))
        .toList();
  }

  @override
  Future<void> saveMileStone(List<MileStoneWithSummaryIssue> entity) async {
    DagashiDatabase database = await _databaseHelper.database;
    database.mileStoneDao
        .insertList(entity.map((e) => e.mileStoneEntity).toList());
    database.summaryIssueDao
        .insertList(entity.expand((e) => e.issues).toList());
  }
}

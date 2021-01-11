import 'dart:async';

import 'package:dagashi_flutter/data/db/dao/mile_stone_dao.dart';
import 'package:dagashi_flutter/data/db/entity/mile_stone_entity.dart';
import 'package:dagashi_flutter/data/db/entity/summary_issue_entity.dart';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'converter/date_time_converter.dart';

part 'dagashi_database.g.dart';

@TypeConverters([DateTimeConverter])
@Database(version: 1, entities: [MileStoneEntity, SummaryIssueEntity])
abstract class DagashiDatabase extends FloorDatabase {
  MileStoneDao get mileStoneDao;

  SummaryIssueDao get summaryIssueDao;
}

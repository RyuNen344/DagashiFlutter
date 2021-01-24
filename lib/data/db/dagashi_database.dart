import 'dart:async';

import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'converter/date_time_converter.dart';
import 'dao/issue_dao.dart';
import 'dao/mile_stone_dao.dart';
import 'entity/author_entity.dart';
import 'entity/comment_entity.dart';
import 'entity/issue_entity.dart';
import 'entity/label_entity.dart';
import 'entity/mile_stone_entity.dart';
import 'entity/relation/comment_author_cross_ref.dart';
import 'entity/relation/issue_label_cross_ref.dart';
import 'entity/summary_issue_entity.dart';

part 'dagashi_database.g.dart';

@TypeConverters([DateTimeConverter])
@Database(version: 1, entities: [
  MileStoneEntity,
  SummaryIssueEntity,
  IssueEntity,
  LabelEntity,
  CommentEntity,
  AuthorEntity,
  IssueLabelCrossRef,
  CommentAuthorCrossRef
])
abstract class DagashiDatabase extends FloorDatabase {
  MileStoneDao get mileStoneDao;

  SummaryIssueDao get summaryIssueDao;

  IssueDao get issueDao;

  IssueLabelCrossRefDao get issueLabelCrossRefDao;

  CommentAuthorCrossRefDao get commentAuthorCrossRefDao;

  AuthorDao get authorDao;

  CommentDao get commentDao;

  LabelDao get labelDao;

  Future<void> runOnTransaction(Function(_$DagashiDatabase) daoExecution);

  static const DATABASE_NAME = 'dagashi.db';

  static Future<DagashiDatabase> build() async {
    return await $FloorDagashiDatabase.databaseBuilder(DATABASE_NAME).build();
  }
}

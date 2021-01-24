import 'package:dagashi_flutter/data/db/dagashi_database.dart';
import 'package:dagashi_flutter/data/db/database_helper.dart';
import 'package:dagashi_flutter/data/db/entity/combined/comment_author.dart';
import 'package:dagashi_flutter/data/db/entity/combined/issue_with_label_and_comment.dart';
import 'package:dagashi_flutter/data/db/entity/combined/mile_stone_with_summary_issue.dart';
import 'package:dagashi_flutter/data/db/entity/comment_entity.dart';
import 'package:dagashi_flutter/data/db/entity/issue_entity.dart';
import 'package:dagashi_flutter/data/db/entity/label_entity.dart';
import 'package:dagashi_flutter/data/db/entity/mile_stone_entity.dart';
import 'package:dagashi_flutter/data/db/entity/relation/comment_author_cross_ref.dart';
import 'package:dagashi_flutter/data/db/entity/relation/issue_label_cross_ref.dart';
import 'package:dagashi_flutter/data/db/entity/summary_issue_entity.dart';
import 'package:dagashi_flutter/data/db/issue_database.dart';
import 'package:dagashi_flutter/data/db/mile_stone_database.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class DagashiDatabaseImpl implements MileStoneDatabase, IssueDatabase {
  DagashiDatabaseImpl({@required DatabaseHelper databaseHelper})
      : this._databaseHelper = databaseHelper;

  final DatabaseHelper _databaseHelper;

  @override
  Stream<List<MileStoneWithSummaryIssue>> mileStoneEntity() {
    return _databaseHelper.database.asStream().flatMap((database) {
      return database.mileStoneDao
          .select()
          .asyncMap((mileStones) => _mapWithSummaryIssue(database, mileStones));
    });
  }

  Future<List<MileStoneWithSummaryIssue>> _mapWithSummaryIssue(
      DagashiDatabase database, List<MileStoneEntity> mileStones) async {
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
    database.runOnTransaction((transactionDatabase) async {
      await transactionDatabase.mileStoneDao
          .insertOrUpdateList(entity.map((e) => e.mileStoneEntity).toList());
      await transactionDatabase.summaryIssueDao
          .insertOrUpdateList(entity.expand((e) => e.issues).toList());
    });
  }

  @override
  Stream<List<IssueWithLabelAndComment>> issueEntity(int number) {
    return _databaseHelper.database.asStream().flatMap((database) {
      return database.issueDao
          .select(number)
          .asyncMap((issues) => _mapWithLabelAndComment(database, issues));
    });
  }

  Future<List<IssueWithLabelAndComment>> _mapWithLabelAndComment(
      DagashiDatabase database, List<IssueEntity> issues) async {
    return Future.wait(issues.map((issue) async {
      // label
      List<IssueLabelCrossRef> labelCrossRef =
          await database.issueLabelCrossRefDao.select(issue.singleUniqueId);
      List<LabelEntity> labels = await Future.wait(labelCrossRef
          .map((e) async => await database.labelDao.select(e.labelName))
          .toList());

      // comment
      List<CommentEntity> comments =
          await database.commentDao.select(issue.singleUniqueId);
      List<CommentAuthor> commentAuthors =
          await Future.wait(comments.map((comment) async {
        var crossRef = await database.commentAuthorCrossRefDao
            .select(comment.id, comment.singleUniqueId);
        var author = await database.authorDao.select(crossRef.login);
        return CommentAuthor(comment, author);
      }).toList());
      return IssueWithLabelAndComment(issue, labels, commentAuthors);
    }).toList());
  }

  @override
  Future<void> saveIssue(List<IssueWithLabelAndComment> entity) async {
    DagashiDatabase database = await _databaseHelper.database;
    database.runOnTransaction((transactionDatabase) async {
      await transactionDatabase.issueDao
          .insertOrUpdateList(entity.map((e) => e.issueEntity).toList());
      await transactionDatabase.labelDao
          .insertOrUpdateList(entity.expand((e) => e.labelEntities).toList());
      await transactionDatabase.issueLabelCrossRefDao.insertOrUpdateList(entity
          .expand((e) => e.labelEntities.map((label) =>
              IssueLabelCrossRef(e.issueEntity.singleUniqueId, label.name)))
          .toList());
      await transactionDatabase.commentDao.insertOrUpdateList(entity
          .expand((e) => e.commentAuthorEntities.map((e) => e.commentEntity))
          .toList());
      await transactionDatabase.authorDao.insertOrUpdateList(entity
          .expand((e) => e.commentAuthorEntities.map((e) => e.authorEntity))
          .toList());
      await transactionDatabase.commentAuthorCrossRefDao.insertOrUpdateList(
          entity
              .expand((e) => e.commentAuthorEntities.map((commentAuthor) =>
                  CommentAuthorCrossRef(
                      commentAuthor.commentEntity.id,
                      commentAuthor.commentEntity.singleUniqueId,
                      commentAuthor.authorEntity.login)))
              .toList());
    });
  }
}

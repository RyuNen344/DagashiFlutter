import 'package:dagashi_flutter/data/db/entity/author_entity.dart';
import 'package:dagashi_flutter/data/db/entity/comment_entity.dart';
import 'package:dagashi_flutter/data/db/entity/issue_entity.dart';
import 'package:dagashi_flutter/data/db/entity/label_entity.dart';
import 'package:dagashi_flutter/data/db/entity/relation/comment_author_cross_ref.dart';
import 'package:dagashi_flutter/data/db/entity/relation/issue_label_cross_ref.dart';
import 'package:floor/floor.dart';

import 'base_dao.dart';

@dao
abstract class IssueDao extends BaseDao<IssueEntity> {
  @Query('SELECT * FROM issue WHERE number = :number ORDER BY id ASC')
  Stream<List<IssueEntity>> select(int number);
}

@dao
abstract class IssueLabelCrossRefDao extends BaseDao<IssueLabelCrossRef> {
  @Query(
      'SELECT * FROM issue_label_cross_ref WHERE single_unique_id = :singleUniqueId')
  Future<List<IssueLabelCrossRef>> select(String singleUniqueId);
}

@dao
abstract class CommentAuthorCrossRefDao extends BaseDao<CommentAuthorCrossRef> {
  @Query(
      'SELECT * FROM comment_author_cross_ref WHERE id = :id AND single_unique_id = :singleUniqueId AND login = :login')
  Future<CommentAuthorCrossRef> select(
      int id, String singleUniqueId, String login);
}

@dao
abstract class AuthorDao extends BaseDao<AuthorEntity> {
  @Query('SELECT DISTINCT * FROM author WHERE login = :login')
  Future<AuthorEntity> select(String login);
}

@dao
abstract class CommentDao extends BaseDao<CommentEntity> {
  @Query('SELECT * FROM comment WHERE singleUniqueId = :singleUniqueId')
  Future<List<CommentEntity>> select(String singleUniqueId);
}

@dao
abstract class LabelDao extends BaseDao<LabelEntity> {
  @Query('SELECT * FROM label WHERE name = :name')
  Future<LabelEntity> select(String name);
}

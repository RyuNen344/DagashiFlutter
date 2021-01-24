import 'package:dagashi_flutter/data/db/entity/author_entity.dart';
import 'package:dagashi_flutter/data/db/entity/comment_entity.dart';
import 'package:floor/floor.dart';

@Entity(tableName: 'comment_author_cross_ref', primaryKeys: [
  'id',
  'single_unique_id',
  'login'
], foreignKeys: [
  ForeignKey(
      childColumns: ['id'],
      parentColumns: ['id'],
      entity: CommentEntity,
      onDelete: ForeignKeyAction.cascade),
  ForeignKey(
      childColumns: ['single_unique_id'],
      parentColumns: ['single_unique_id'],
      entity: CommentEntity,
      onDelete: ForeignKeyAction.cascade),
  ForeignKey(
      childColumns: ['login'],
      parentColumns: ['login'],
      entity: AuthorEntity,
      onDelete: ForeignKeyAction.cascade)
])
class CommentAuthorCrossRef {
  @ColumnInfo(name: 'id', nullable: false)
  final int id;
  @ColumnInfo(name: 'single_unique_id', nullable: false)
  final String singleUniqueId;
  @ColumnInfo(name: 'login', nullable: false)
  final String login;

  CommentAuthorCrossRef(this.id, this.singleUniqueId, this.login);
}

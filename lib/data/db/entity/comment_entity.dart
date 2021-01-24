import 'package:floor/floor.dart';

import 'issue_entity.dart';

@Entity(tableName: 'comment', primaryKeys: [
  'id',
  'single_unique_id'
], foreignKeys: [
  ForeignKey(
      childColumns: ['single_unique_id'],
      parentColumns: ['single_unique_id'],
      entity: IssueEntity,
      onDelete: ForeignKeyAction.cascade)
])
class CommentEntity {
  @ColumnInfo(name: 'id', nullable: false)
  final int id;
  @ColumnInfo(name: 'single_unique_id', nullable: false)
  final String singleUniqueId;
  @ColumnInfo(name: 'body', nullable: false)
  final String body;
  @ColumnInfo(name: 'published_at', nullable: false)
  final DateTime publishedAt;

  CommentEntity(this.id, this.singleUniqueId, this.body, this.publishedAt);
}

import 'package:floor/floor.dart';

@Entity(tableName: 'issue')
class IssueEntity {
  @primaryKey
  @ColumnInfo(name: 'single_unique_id', nullable: false)
  final String singleUniqueId;
  @ColumnInfo(name: 'id', nullable: false)
  final String id;
  @ColumnInfo(name: 'number', nullable: false)
  final int number;
  @ColumnInfo(name: 'url', nullable: false)
  final String url;
  @ColumnInfo(name: 'title', nullable: false)
  final String title;
  @ColumnInfo(name: 'body', nullable: false)
  final String body;

  IssueEntity(this.singleUniqueId, this.id, this.number, this.url, this.title,
      this.body);
}

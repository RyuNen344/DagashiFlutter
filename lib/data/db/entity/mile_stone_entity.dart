import 'package:floor/floor.dart';

@Entity(tableName: 'mile_stone')
class MileStoneEntity {
  @primaryKey
  @ColumnInfo(name: 'id', nullable: false)
  final String id;
  @ColumnInfo(name: 'number', nullable: false)
  final int number;
  @ColumnInfo(name: 'url', nullable: false)
  final String url;
  @ColumnInfo(name: 'title', nullable: false)
  final String title;
  @ColumnInfo(name: 'description', nullable: false)
  final String description;
  @ColumnInfo(name: 'closed_at', nullable: false)
  final DateTime closedAt;
  @ColumnInfo(name: 'path', nullable: false)
  final String path;

  MileStoneEntity(this.id, this.number, this.url, this.title, this.description,
      this.closedAt, this.path);
}

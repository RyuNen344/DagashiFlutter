import 'package:dagashi_flutter/data/db/entity/mile_stone_entity.dart';
import 'package:floor/floor.dart';

@Entity(tableName: 'summary_issue', primaryKeys: [
  'id',
  'mile_stone_id'
], foreignKeys: [
  ForeignKey(
      childColumns: ['mile_stone_id'],
      parentColumns: ['id'],
      entity: MileStoneEntity)
], indices: [
  Index(value: ['id', 'mile_stone_id'])
])
class SummaryIssueEntity {
  @ColumnInfo(name: 'id', nullable: false)
  final int id;
  @ColumnInfo(name: 'mile_stone_id', nullable: false)
  final String mileStoneId;
  @ColumnInfo(name: 'title', nullable: false)
  final String title;

  SummaryIssueEntity(this.id, this.mileStoneId, this.title);
}

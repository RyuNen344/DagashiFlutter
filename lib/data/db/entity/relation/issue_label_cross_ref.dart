import 'package:dagashi_flutter/data/db/entity/issue_entity.dart';
import 'package:dagashi_flutter/data/db/entity/label_entity.dart';
import 'package:floor/floor.dart';

@Entity(tableName: 'issue_label_cross_ref', primaryKeys: [
  'single_unique_id',
  'label_name'
], foreignKeys: [
  ForeignKey(
      childColumns: ['single_unique_id'],
      parentColumns: ['single_unique_id'],
      entity: IssueEntity,
      onDelete: ForeignKeyAction.cascade),
  ForeignKey(
      childColumns: ['name'],
      parentColumns: ['label_name'],
      entity: LabelEntity,
      onDelete: ForeignKeyAction.cascade)
])
class IssueLabelCrossRef {
  @ColumnInfo(name: 'single_unique_id', nullable: false)
  final String singleUniqueId;

  @ColumnInfo(name: 'label_name', nullable: false)
  final String labelName;

  IssueLabelCrossRef(this.singleUniqueId, this.labelName);
}

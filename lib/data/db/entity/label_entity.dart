import 'package:floor/floor.dart';

@Entity(tableName: 'label')
class LabelEntity {
  @primaryKey
  @ColumnInfo(name: 'name', nullable: false)
  final String name;
  @ColumnInfo(name: 'description', nullable: false)
  final String description;
  @ColumnInfo(name: 'color', nullable: false)
  final String color;

  LabelEntity(this.name, this.description, this.color);
}

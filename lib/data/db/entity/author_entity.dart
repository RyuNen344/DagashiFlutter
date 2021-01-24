import 'package:floor/floor.dart';

@Entity(tableName: 'author')
class AuthorEntity {
  @primaryKey
  @ColumnInfo(name: 'login', nullable: false)
  final String login;
  @ColumnInfo(name: 'url', nullable: false)
  final String url;
  @ColumnInfo(name: 'avatar_url', nullable: false)
  final String avatarUrl;

  AuthorEntity(this.login, this.url, this.avatarUrl);
}

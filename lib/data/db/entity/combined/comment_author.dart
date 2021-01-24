import 'package:dagashi_flutter/data/db/entity/author_entity.dart';
import 'package:dagashi_flutter/data/db/entity/comment_entity.dart';

class CommentAuthor {
  final CommentEntity commentEntity;

  final AuthorEntity authorEntity;

  CommentAuthor(this.commentEntity, this.authorEntity);
}
